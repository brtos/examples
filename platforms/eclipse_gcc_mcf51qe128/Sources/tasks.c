#include "BRTOS.h"

void blink(void) {

	// Set PTE2 as output and clear it
	PTEDD |= (1 << 2);
	PTECLR |= (1 << 2);

	while (1) {
		// Toggle LED
		PTETOG |= (1 << 2);

		DelayTask(1000);
	}

}
