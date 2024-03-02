#define F_CPU 16000000L

#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>

#define LED_PORT PORTB
#define LED_PIN (5)

int main(void) {
	DDRB |= 1 << LED_PIN;

	for(;;) {
		LED_PORT ^= 1 << LED_PIN;
		_delay_ms(1000);
	}

	return 0;
}
