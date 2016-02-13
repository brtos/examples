/* Standard includes. */
#include <stdio.h>
#include <stdint.h>

/* Scheduler includes. */
#include "BRTOS.h"
#include "tasks.h"

BRTOS_TH blk;

int main(void)
{
  // Init your system clock here
  SOPT1 = 0x72;

  // Initialize BRTOS
  BRTOS_Init();

  if(InstallTask(&blink,"Blink LED",256,8,&blk) != OK)
   {
     // Oh Oh
     // Não deveria entrar aqui !!!
     while(1){
    	 __asm__("halt");
     };
   };

  // Start Task Scheduler
  if(BRTOSStart() != OK)
  {
    // Oh Oh
    // Não deveria entrar aqui !!!
    for(;;){};
  };

  return 0;
}

