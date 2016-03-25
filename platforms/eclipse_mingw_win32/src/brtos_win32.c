/*
 ============================================================================
 Name        : brtos_win32.c
 Author      : Carlos H. Barriquello
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

/* BRTOS includes. */
#include "BRTOS.h"
#include "tasks.h"

BRTOS_TH th1, th2, th3;

int main(void) {
	  puts("!!!Hello World!!!"); /* prints !!!Hello World!!! */

	  // Initialize BRTOS
	  BRTOS_Init();

	  if(OSInstallTask(&exec,"Teste 1",16,3,&th1) != OK)
	  {
	    while(1){};
	  };


	  if(OSInstallTask(&exec2,"Teste 2",16,5,&th2) != OK)
	  {
	    while(1){};
	  };

	  if(OSInstallTask(&exec3,"Teste 3",16,10,&th3) != OK)
	  {
	    while(1){};
	  };

	  // Start Task Scheduler
	  if(BRTOSStart() != OK)
	  {
	    for(;;){};
	  };

	  return EXIT_SUCCESS;
}
