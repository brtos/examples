/**
* \file HAL.c
* \brief BRTOS Hardware Abstraction Layer Functions.
*
* This file contain the functions that are processor dependent.
*
*
**/

/*********************************************************************************************************
*                                               BRTOS
*                                Brazilian Real-Time Operating System
*                            Acronymous of Basic Real-Time Operating System
*
*                              
*                                  Open Source RTOS under MIT License
*
*
*
*                                   OS HAL Functions for Win32 port
*
*
*   Author:   Carlos H. Barriquello
*   Revision: 1.0
*   Date:     25/03/2016
*
*********************************************************************************************************/
#include "BRTOS.h"
#include "stdint.h"

#ifdef __GNUC__
	#include "mmsystem.h"
#else
	#pragma comment(lib, "winmm.lib")
#endif

   /*
   * Created as a high priority thread, this function uses a timer to simulate
   * a tick interrupt being generated on an embedded target.  In this Windows
   * environment the timer does not achieve anything approaching real time
   * performance though.
   */
  static DWORD WINAPI SimulatedPeripheralTimer( LPVOID lpParameter );

  /*
   * Process all the simulated interrupts - each represented by a bit in
   * ulPendingInterrupts variable.
   */
  static void ProcessSimulatedInterrupts( void );

  /*
   * Interrupt handlers used by the kernel itself.  These are executed from the
   * simulated interrupt handler thread.
   */
  static uint32_t SwitchContext( void );
  static uint32_t TickTimer( void );

  /*
   * Called when the process exits to let Windows know the high timer resolution
   * is no longer required.
   */
  static BOOL WINAPI EndProcess( DWORD dwCtrlType );

  /*-----------------------------------------------------------*/

  /* The WIN32 simulator runs each task in a thread.  The context switching is
  managed by the threads, so the task stack does not have to be managed directly,
  although the task stack is still used to hold an xThreadState structure this is
  the only thing it will ever hold.  The structure indirectly maps the task handle
  to a thread handle. */
  typedef struct
  {
  	/* Handle of the thread that executes the task. */
  	void *Thread;

  } ThreadState;

  /* Simulated interrupts waiting to be processed.  This is a bit mask where each
  bit represents one interrupt, so a maximum of 32 interrupts can be simulated. */
  static volatile uint32_t PendingInterrupts = 0UL;

  #define MAX_INTERRUPTS	(sizeof(PendingInterrupts)*8)

  /* An event used to inform the simulated interrupt processing thread (a high
  priority thread that simulated interrupt processing) that an interrupt is
  pending. */
  static void *InterruptEvent = NULL;

  /* Mutex used to protect all the simulated interrupt variables that are accessed
  by multiple threads. */
  static void *InterruptEventMutex = NULL;

  /* Handlers for all the simulated software interrupts.  The first two positions
  are used for the Yield and Tick interrupts so are handled slightly differently,
  all the other interrupts can be user defined. */
  static uint32_t (*IsrHandler[ MAX_INTERRUPTS ])( void ) = { 0 };


#define TICK_PERIOD_MS  	(1000/configTICK_RATE_HZ)


  INT32U SPvalue;

  static DWORD WINAPI SimulatedPeripheralTimer( LPVOID Parameter )
  {
	  uint32_t MinimumWindowsBlockTime;

	  TIMECAPS TimeCaps;

  	/* Set the timer resolution to the maximum possible. */
  	if(timeGetDevCaps( &TimeCaps, sizeof( TimeCaps ) ) == MMSYSERR_NOERROR )
  	{
  		MinimumWindowsBlockTime = ( uint32_t ) TimeCaps.wPeriodMin;
  		timeBeginPeriod( TimeCaps.wPeriodMin );

  		/* Register an exit handler so the timeBeginPeriod() function can be
  		matched with a timeEndPeriod() when the application exits. */
  		SetConsoleCtrlHandler( EndProcess, TRUE );
  	}
  	else
  	{
  		MinimumWindowsBlockTime = ( uint32_t ) 20;
  	}

  	/* Just to prevent compiler warnings. */
  	( void ) Parameter;

  	for( ;; )
  	{
  		/* Wait until the timer expires and we can access the simulated interrupt
  		variables.  *NOTE* this is not a 'real time' way of generating tick
  		events as the next wake time should be relative to the previous wake
  		time, not the time that Sleep() is called.  It is done this way to
  		prevent overruns in this very non real time simulated/emulated
  		environment. */
  		if( TICK_PERIOD_MS < MinimumWindowsBlockTime )
  		{
  			Sleep( MinimumWindowsBlockTime );
  		}
  		else
  		{
  			Sleep( TICK_PERIOD_MS );
  		}

  		WaitForSingleObject( InterruptEventMutex, INFINITE );

  		/* The timer has expired, generate the simulated tick event. */
  		PendingInterrupts |= ( 1 << INTERRUPT_TICK );

  		/* The interrupt is now pending - notify the simulated interrupt
  		handler thread. */
  		if( iNesting == 0 )
  		{
  			SetEvent( InterruptEvent );
  		}

  		/* Give back the mutex so the simulated interrupt handler unblocks
  		and can	access the interrupt handler variables. */
  		ReleaseMutex( InterruptEventMutex );
  	}

  	#ifdef __GNUC__
  		/* Should never reach here - MingW complains if you leave this line out,
  		MSVC complains if you put it in. */
  		return 0;
  	#endif
  }
  /*-----------------------------------------------------------*/

  /*-----------------------------------------------------------*/

  static BOOL WINAPI EndProcess( DWORD dwCtrlType )
  {
	  TIMECAPS TimeCaps;

  	( void ) dwCtrlType;

  	if( timeGetDevCaps( &TimeCaps, sizeof( TimeCaps ) ) == MMSYSERR_NOERROR )
  	{
  		/* Match the call to timeBeginPeriod( TimeCaps.wPeriodMin ) made when
  		the process started with a timeEndPeriod() as the process exits. */
  		timeEndPeriod( TimeCaps.wPeriodMin );
  	}

  	return OK;
  }
  /*-----------------------------------------------------------*/

#if (TASK_WITH_PARAMETERS == 1)
void CreateVirtualStack(void(*FctPtr)(void*), INT16U NUMBER_OF_STACKED_BYTES, void *parameters)
#else
void CreateVirtualStack(void(*FctPtr)(void), INT16U NUMBER_OF_STACKED_BYTES)
#endif
{

#if (TASK_WITH_PARAMETERS == 0)
	  void *parameters = NULL;
#endif

		extern OS_CPU_TYPE STACK[];

		ThreadState *pThreadState = NULL;

		OS_CPU_TYPE *stk_pt = (OS_CPU_TYPE*)&STACK[iStackAddress + (NUMBER_OF_STACKED_BYTES / sizeof(OS_CPU_TYPE))];

		int8_t *TopOfStack = ( int8_t * ) stk_pt;
		pThreadState = ( ThreadState * ) ( TopOfStack - sizeof( ThreadState ) );


		/* Create the thread itself. */
 	  	pThreadState->Thread = CreateThread( NULL, 0, ( LPTHREAD_START_ROUTINE ) FctPtr, parameters, CREATE_SUSPENDED, NULL );
 	  	if( pThreadState->Thread == NULL) return;
 	  	SetThreadAffinityMask( pThreadState->Thread, 0x01 );
 	  	SetThreadPriorityBoost( pThreadState->Thread, TRUE );
 	  	SetThreadPriority( pThreadState->Thread, THREAD_PRIORITY_IDLE );

 	  	return;

}

/*-----------------------------------------------------------*/


  ////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////
  /////      OS Tick Timer Setup                         /////
  /////                                                  /////
  ////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////

void TickTimerSetup(void)
{
	/* In the Win32 port, the timer is simulated using a high priority thread,
	 * which is created and started in the function BRTOSStartFirstTask
	 */

}


////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
/////      OS RTC Setup                                /////
/////                                                  /////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

void OSRTCSetup(void)
{  

}



/*-----------------------------------------------------------*/
static uint32_t TickTimer(void)
{

  OSIncCounter();
  OS_TICK_HANDLER();
  
  return TRUE;

}

/*-----------------------------------------------------------*/

static uint32_t SwitchContext(void)
{
	return TRUE;
}
/*-----------------------------------------------------------*/

/*-----------------------------------------------------------*/

void BTOSStartFirstTask( void )
{
	uint8_t Success = TRUE;
	void *Handle;
	ThreadState *pThreadState;

	/* Install the interrupt handlers used by the scheduler itself. */
	SetInterruptHandler( INTERRUPT_SWC, SwitchContext );
	SetInterruptHandler( INTERRUPT_TICK, TickTimer );

	/* Create the events and mutexes that are used to synchronise all the
	threads. */
	InterruptEventMutex = CreateMutex( NULL, FALSE, NULL );
	InterruptEvent = CreateEvent( NULL, FALSE, FALSE, NULL );

	if( ( InterruptEventMutex == NULL ) || ( InterruptEvent == NULL ) )
	{
		Success = FALSE;
	}

	/* Set the priority of this thread such that it is above the priority of
	the threads that run tasks.  This higher priority is required to ensure
	simulated interrupts take priority over tasks. */
	Handle = GetCurrentThread();
	if( Handle == NULL )
	{
		Success = FALSE;
	}

	if( Success == TRUE )
	{
		if( SetThreadPriority( Handle, THREAD_PRIORITY_NORMAL ) == 0 )
		{
			Success = FALSE;
		}
		SetThreadPriorityBoost( Handle, TRUE );
		SetThreadAffinityMask( Handle, 0x01 );
	}

	if( Success == TRUE )
	{
		/* Start the thread that simulates the timer peripheral to generate
		tick interrupts.  The priority is set below that of the simulated
		interrupt handler so the interrupt event mutex is used for the
		handshake / overrun protection. */
		Handle = CreateThread( NULL, 0, SimulatedPeripheralTimer, NULL, CREATE_SUSPENDED, NULL );
		if( Handle != NULL )
		{
			SetThreadPriority( Handle, THREAD_PRIORITY_BELOW_NORMAL );
			SetThreadPriorityBoost( Handle, TRUE );
			SetThreadAffinityMask( Handle, 0x01 );
			ResumeThread( Handle );
		}

		/* Start the highest priority task by obtaining its associated thread
		state structure, in which is stored the thread handle. */
		pThreadState = ( ThreadState * ) ( ( size_t * ) SPvalue );
		iNesting = 0;

		/* Bump up the priority of the thread that is going to run, in the
		hope that this will assist in getting the Windows thread scheduler to
		behave as an embedded engineer might expect. */
		ResumeThread( pThreadState->Thread );

		/* Handle all simulated interrupts - including yield requests and
		simulated ticks. */
		ProcessSimulatedInterrupts();
	}

}
/*-----------------------------------------------------------*/


static void ProcessSimulatedInterrupts( void )
{
	uint32_t SwitchRequired, i;
	ThreadState *pThreadState;
	void *ObjectList[ 2 ];
	CONTEXT Context;

	/* Going to block on the mutex that ensured exclusive access to the simulated
	interrupt objects, and the event that signals that a simulated interrupt
	should be processed. */
	ObjectList[ 0 ] = InterruptEventMutex;
	ObjectList[ 1 ] = InterruptEvent;

	/* Create a pending tick to ensure the first task is started as soon as
	this thread pends. */
	PendingInterrupts |= ( 1 << INTERRUPT_TICK );
	SetEvent( InterruptEvent );


	for(;;)
	{
		WaitForMultipleObjects( sizeof( ObjectList ) / sizeof( void * ), ObjectList, TRUE, INFINITE );

		/* Used to indicate whether the simulated interrupt processing has
		necessitated a context switch to another task/thread. */
		SwitchRequired = FALSE;

		/* For each interrupt we are interested in processing, each of which is
		represented by a bit in the 32bit ulPendingInterrupts variable. */
		for( i = 0; i < MAX_INTERRUPTS; i++ )
		{
			/* Is the simulated interrupt pending? */
			if( PendingInterrupts & ( 1UL << i ) )
			{
				/* Is a handler installed? */
				if( IsrHandler[ i ] != NULL )
				{
					/* Run the actual handler. */
					if( IsrHandler[ i ]() != FALSE )
					{
						SwitchRequired |= ( 1 << i );
					}
				}

				/* Clear the interrupt pending bit. */
				PendingInterrupts &= ~( 1UL << i );
			}
		}

		if( SwitchRequired != FALSE )
		{

			/* Select the next task to run. */
			 SelectedTask = OSSchedule();

			/* If the task selected to enter the running state is not the task
			that is already in the running state. */
			if( currentTask != SelectedTask )
			{

				/* Suspend the old thread. */
				pThreadState = ( ThreadState *) ( ( size_t * ) ContextTask[currentTask].StackPoint );
				SuspendThread( pThreadState->Thread );

				/* Ensure the thread is actually suspended by performing a
				synchronous operation that can only complete when the thread is
				actually suspended.  The below code asks for dummy register
				data. */
				Context.ContextFlags = CONTEXT_INTEGER;
				( void ) GetThreadContext( pThreadState->Thread, &Context );


				currentTask = SelectedTask;

				/* Obtain the state of the task now selected to enter the
				Running state. */
				pThreadState = ( ThreadState * ) ( ( size_t *) ContextTask[currentTask].StackPoint);
				ResumeThread( pThreadState->Thread );
			}
		}

		ReleaseMutex( InterruptEventMutex );
	}
}
/*-----------------------------------------------------------*/


/*-----------------------------------------------------------*/

void GenerateSimulatedInterrupt( uint32_t InterruptNumber )
{

	if( ( InterruptNumber < MAX_INTERRUPTS ) && ( InterruptEventMutex != NULL ) )
	{
		/* Yield interrupts are processed even when critical nesting is non-zero. */
		WaitForSingleObject( InterruptEventMutex, INFINITE );
		PendingInterrupts |= ( 1 << InterruptNumber );

		/* The simulated interrupt is now held pending, but don't actually process it
		yet if this call is within a critical section.  It is possible for this to
		be in a critical section as calls to wait for mutexes are accumulative. */
		if( iNesting == 0 )
		{
			SetEvent( InterruptEvent );
		}

		ReleaseMutex( InterruptEventMutex );
	}
}


/*-----------------------------------------------------------*/

void SetInterruptHandler( uint32_t InterruptNumber, uint32_t (*Handler)( void ) )
{
	if( InterruptNumber < MAX_INTERRUPTS )
	{
		if( InterruptEventMutex != NULL )
		{
			WaitForSingleObject( InterruptEventMutex, INFINITE );
			IsrHandler[ InterruptNumber ] = Handler;
			ReleaseMutex( InterruptEventMutex );
		}
		else
		{
			IsrHandler[ InterruptNumber ] = Handler;
		}
	}
}
/*-----------------------------------------------------------*/

void EnterCritical( void )
{

	/* The interrupt event mutex is held for the entire critical section,
	effectively disabling (simulated) interrupts. */
	WaitForSingleObject( InterruptEventMutex, INFINITE );
	iNesting++;
}
/*-----------------------------------------------------------*/

void ExitCritical( void )
{
	int32_t MutexNeedsReleasing;

	/* The interrupt event mutex should already be held by this thread as it was
	obtained on entry to the critical section. */

	MutexNeedsReleasing = TRUE;

	/* Were any interrupts set to pending while interrupts were
	(simulated) disabled? */
	if(iNesting>0)
	{
		iNesting--;

		if(iNesting == 0 && PendingInterrupts != 0UL )
		{
			SetEvent( InterruptEvent );

			/* Mutex will be released now, so does not require releasing
			on function exit. */
			MutexNeedsReleasing = FALSE;
			ReleaseMutex( InterruptEventMutex );
		}
	}


	if( InterruptEventMutex != NULL )
	{
		if( MutexNeedsReleasing == TRUE )
		{
			ReleaseMutex( InterruptEventMutex );
		}
	}
}
/*-----------------------------------------------------------*/
