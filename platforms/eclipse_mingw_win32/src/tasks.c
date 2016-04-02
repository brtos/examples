#include "BRTOS.h"
#include "stdio.h"

void exec(void)
{
  while(1)
  {

	  printf("Tick Count: %u\r\n", (uint32_t)OSGetTickCount());
	  fflush(stdout);
	  DelayTask(100);
  }
}

void exec2(void)
{

  uint32_t run = 0;
  while(1)
  {
	printf("Task 2, run: %u\r\n", (uint32_t)run++);
	fflush(stdout);
    DelayTask(100);
  }
}

void exec3(void)
{
  uint32_t run = 0;
  while(1)
  {
	  printf("Task 3, run: %u\r\n", (uint32_t)run++);
	  fflush(stdout);
	  DelayTask(200);

  }
}
