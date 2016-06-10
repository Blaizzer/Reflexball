#include "gameelements.h"


#define ESC 0x1B


void buttonInit(){

	PFADDR = 0x01;	//Selects data direction
	PFCTL |= 0xC0;	//Sets pin 6 and 7 as input
	PFADDR = 0x00;
	

	PDADDR = 0x01;	//Selects data direction for port D
	PDCTL |= 0x08;	//Sets pin 4 as input
	PDADDR = 0x00;
}

char readKey(){
	return (~( ((PDIN & 0x08) >> 1) + ((PFIN & 0x40) >> 5) + ((PFIN & 0x80) >> 7)) & 7); //PD3 >>1, PF6 >> 5, PF7 >> 7
}

void slidercreate(struct SLider *s, char startPosX, char startPosY){
	int i;
//init struct of slider
	(*s).x1 = startPosX / 2 - 4;
	(*s).x2 = startPosX / 2 + 4;
	(*s).y = startPosY-1;
//Draw The slider
	gotoxy(1,(*s).y);
	clreol();
	gotoxy((*s).x1, (*s).y);
	for (i = 0; i < 8; i++){
		printf("%c", 207);
	}
}

void sliderPos(struct SLider *s){
	char key = readKey(); 
		if (key == 1 && (*s).x2 < 100 ){
    		gotoxy((*s).x1, (*s).y);
			printf("%c", 32);
			gotoxy((*s).x2+1, (*s).y);
			printf("%c", 207);
			(*s).x1 = (*s).x1 + 1;
			(*s).x2 = (*s).x2 + 1;
		} else if (key == 4 && (*s).x1 > 1) {
			gotoxy((*s).x1-1, (*s).y);
			printf("%c", 207);
			gotoxy((*s).x2, (*s).y);
			printf("%c", 32);
			(*s).x2 = (*s).x2 - 1;
   			(*s).x1 = (*s).x1 - 1;
	}
	
}

void ballInit(struct Ball *b){
	(*b).x = 50;
	(*b).y = 3;
}

void ballPos(struct Ball *b){
	gotoxy((*b).x,(*b).y);
	printf("%c", 32);
	gotoxy((*b).x, (*b).y+1);
	printf("%c", 219);
	(*b).y = (*b).y +1;
	
}

