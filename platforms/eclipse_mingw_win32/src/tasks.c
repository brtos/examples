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

  while(1)
  {
    DelayTask(100);
  }
}






void exec3(void)
{
  while(1)
  {
	  DelayTask(100);

  }
}
