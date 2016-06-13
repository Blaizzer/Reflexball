#include <eZ8.h>             // special encore constants, macros and flash routines
#include <sio.h>             // special encore serial i/o routines
#include <stdio.h>

#include "LED.h"
#include "gameelements.h"

char videoB[5][6];

volatile unsigned long clock;


#pragma interrupt
void timer0int(){
	clock++;
}

void main() {
	char columm = 0, display = 0, i,  n, index, count = 0, shift = 1;
	int posX2 = 100, posY2 = 50;
	char data[] = "PENIS  ";	
	struct SLider slider;
	struct Ball Ball;
	int ballSpeed = 0;
	char key = 0;
	init_uart(_UART0, _DEFFREQ, _DEFBAUD);

// initialis LED and clock
	LED_init();
	buttonInit();
//finde string length
	Buffer(data);
	n = sizeof(data)/sizeof(char)-1;
// Mainloop
	
	clrscr();
	window(1,1,posX2,posY2, "fsdf", 3 );
	slidercreate(&slider, posX2,posY2);
	ballInit(&Ball);

	while(1){

	sliderPos(&slider);

	if (ballSpeed > 200){
		ballPos(&Ball);
		ballSpeed = 0;
	}
	if (Ball.y > posY2){ 
		(Ball).x = 50;
		(Ball).y = 3;
	}
	ballSpeed++;
	gotoxy(15,15);
	printf("%d", readKey());
	printf("%d", slider.x2-slider.x1);
/*		if (clock >=2){
			shift++;
			//reset the display
			if (columm == 0){
				PEOUT |= 0xE0;
				PGOUT |= 0x80;
				PEOUT = 0x1F;
				PGOUT = 0;
			}
			LEDUpdate(columm, display);
			//change display
			if(columm == 4){
				display = (display + 1) % 4;
				columm = -1;
			}
			columm++;
			clock=0;
		}
		// shift left
		if (shift  >= 90 ) {
			LEDleft();
			count++;
			shift = 0;
			//load new letter to "screen" 5
			if (count == 6) {
				loadBuffer( data[index], 4);
				index = (index + 1) % n;
				count = 0;
			}
		}*/
		
	}
	
}

