#include <sio.h>  
#include <stdio.h>
#include <eZ8.h>
#include "ansi.h"
#include "func.h"


#ifndef GAMEELEMENTS_H
#define GAMEELEMENTS_H

struct SLider{
	char x1, x2, y;
};

struct Ball{
	char x, y;
};	

void buttonInit();
char readKey();
void slidercreate(struct SLider *s, char startPosX, char startPosY);
void sliderPos(struct SLider *s);
void ballInit(struct Ball *b);
void ballPos(struct Ball *b);


#endif
