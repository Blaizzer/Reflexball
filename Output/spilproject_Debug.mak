#
# ZDS II Make File - spilproject, Debug
#

CC = @D:\Uni_programmer\Z8\bin\eZ8cc
ASM = @D:\Uni_programmer\Z8\bin\eZ8asm
LINK = @D:\Uni_programmer\Z8\bin\eZ8link
LIB = @D:\Uni_programmer\Z8\bin\eZ8lib

# compiler options
#   -alias -asm -bitfieldsize:32 -charsize:8 -const:RAM -debug
#   -define:_Z8F6403 -define:_Z8ENCORE_640_FAMILY
#   -define:_Z8ENCORE_F640X -define:_MODEL_LARGE -doublesize:32
#   -NOexpmac -floatsize:32 -NOfplib -genprintf -NOglobalcopy
#   -NOglobalcse -NOglobalfold -intrinsic -intsize:16 -intsrc -NOjmpopt
#   -NOkeepasm -NOkeeplst -NOlist -NOlistinc -localcopy -localcse
#   -localfold -longsize:32 -NOloopopt -maxerrs:50 -model:L -NOoptlink
#   -optsize -peephole -NOpromote -quiet -regvar -revaa -NOsdiopt
#   -shortsize:16
#   -stdinc:"D:\Uni_programmer\Z8\include\std;D:\Uni_programmer\Z8\include\zilog;D:\Uni_programmer\Z8\include\zilog\Z8Encore_F640X"
#   -strict
#   -usrinc:"C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include"
#   -NOwatch -cpu:Z8F6403
#   -asmsw:" -cpu:Z8F6403 -define:_Z8F6403=1 -define:_Z8ENCORE_640_FAMILY=1 -define:_Z8ENCORE_F640X=1 -define:_MODEL_LARGE=1 -include:D:\Uni_programmer\Z8\include\std;D:\Uni_programmer\Z8\include\zilog;D:\Uni_programmer\Z8\include\zilog\Z8Encore_F640X -revaa"
CFLAGS = -sw:C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\spilproject_Debug.ccsw
# assembler options
#   -debug -define:_Z8F6403=1 -define:_Z8ENCORE_640_FAMILY=1
#   -define:_Z8ENCORE_F640X=1 -define:_MODEL_LARGE=1 -genobj -NOigcase
#   -include:"D:\Uni_programmer\Z8\include\std;D:\Uni_programmer\Z8\include\zilog;D:\Uni_programmer\Z8\include\zilog\Z8Encore_F640X"
#   -list -NOlistmac -name -pagelen:56 -pagewidth:80 -quiet -sdiopt
#   -warn -NOzmasm -revaa -cpu:Z8F6403
AFLAGS = -sw:C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\spilproject_Debug.asmsw

OUTDIR = C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\

Debug: spilproject

deltarget: 
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\spilproject.lod  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\spilproject.lod

clean: 
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\spilproject.lod  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\spilproject.lod
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\zsldevinit.obj  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\zsldevinit.obj
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\main.obj  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\main.obj
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\ansi.obj  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\ansi.obj
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\func.obj  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\func.obj
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LUT.obj  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LUT.obj
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LED.obj  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LED.obj
	@if exist C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\gameelements.obj  \
            del C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\gameelements.obj

rebuildall: clean Debug

relink: deltarget Debug

LIBS = 

OBJS =  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\zsldevinit.obj  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\main.obj  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\ansi.obj  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\func.obj  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LUT.obj  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LED.obj  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\gameelements.obj

spilproject: $(OBJS)
	 $(LINK)  @C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\spilproject_Debug.linkcmd

C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\zsldevinit.obj :  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\zsldevinit.asm  \
            D:\Uni_programmer\Z8\include\zilog\ez8dev.inc  \
            D:\Uni_programmer\Z8\include\zilog\gpio.inc
	 $(ASM)  $(AFLAGS) C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\zsldevinit.asm

C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\main.obj :  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\ANSIProject\main.c  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\LED.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\LUT.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\ansi.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\func.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\GAMEEL~1.H  \
            D:\Uni_programmer\Z8\include\std\format.h  \
            D:\Uni_programmer\Z8\include\std\stdarg.h  \
            D:\Uni_programmer\Z8\include\std\stdio.h  \
            D:\Uni_programmer\Z8\include\zilog\defines.h  \
            D:\Uni_programmer\Z8\include\zilog\dmadefs.h  \
            D:\Uni_programmer\Z8\include\zilog\eZ8.h  \
            D:\Uni_programmer\Z8\include\zilog\gpio.h  \
            D:\Uni_programmer\Z8\include\zilog\sio.h  \
            D:\Uni_programmer\Z8\include\zilog\uart.h  \
            D:\Uni_programmer\Z8\include\zilog\uartdefs.h
	 $(CC)  $(CFLAGS) C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\ANSIProject\main.c

C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\ansi.obj :  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\ansi.c  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\ansi.h  \
            D:\Uni_programmer\Z8\include\std\format.h  \
            D:\Uni_programmer\Z8\include\std\stdarg.h  \
            D:\Uni_programmer\Z8\include\std\stdio.h  \
            D:\Uni_programmer\Z8\include\zilog\defines.h  \
            D:\Uni_programmer\Z8\include\zilog\dmadefs.h  \
            D:\Uni_programmer\Z8\include\zilog\eZ8.h  \
            D:\Uni_programmer\Z8\include\zilog\gpio.h  \
            D:\Uni_programmer\Z8\include\zilog\sio.h  \
            D:\Uni_programmer\Z8\include\zilog\uart.h  \
            D:\Uni_programmer\Z8\include\zilog\uartdefs.h
	 $(CC)  $(CFLAGS) C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\ansi.c

C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\func.obj :  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\func.c  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\LUT.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\func.h  \
            D:\Uni_programmer\Z8\include\std\format.h  \
            D:\Uni_programmer\Z8\include\std\stdarg.h  \
            D:\Uni_programmer\Z8\include\std\stdio.h  \
            D:\Uni_programmer\Z8\include\zilog\defines.h  \
            D:\Uni_programmer\Z8\include\zilog\sio.h  \
            D:\Uni_programmer\Z8\include\zilog\uart.h  \
            D:\Uni_programmer\Z8\include\zilog\uartdefs.h
	 $(CC)  $(CFLAGS) C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\func.c

C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LUT.obj :  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\LUT.c  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\LUT.h
	 $(CC)  $(CFLAGS) C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\LUT.c

C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\LED.obj :  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\LED.c  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\LED.h  \
            D:\Uni_programmer\Z8\include\std\format.h  \
            D:\Uni_programmer\Z8\include\std\stdarg.h  \
            D:\Uni_programmer\Z8\include\std\stdio.h  \
            D:\Uni_programmer\Z8\include\zilog\defines.h  \
            D:\Uni_programmer\Z8\include\zilog\dmadefs.h  \
            D:\Uni_programmer\Z8\include\zilog\eZ8.h  \
            D:\Uni_programmer\Z8\include\zilog\gpio.h  \
            D:\Uni_programmer\Z8\include\zilog\sio.h  \
            D:\Uni_programmer\Z8\include\zilog\uart.h  \
            D:\Uni_programmer\Z8\include\zilog\uartdefs.h
	 $(CC)  $(CFLAGS) C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\LED.c

C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\Output\gameelements.obj :  \
            C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\gameelements.c  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\LUT.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\ansi.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\func.h  \
            C:\Users\Morten\Dropbox\PROGRA~1\SpilBase\include\GAMEEL~1.H  \
            D:\Uni_programmer\Z8\include\std\format.h  \
            D:\Uni_programmer\Z8\include\std\stdarg.h  \
            D:\Uni_programmer\Z8\include\std\stdio.h  \
            D:\Uni_programmer\Z8\include\zilog\defines.h  \
            D:\Uni_programmer\Z8\include\zilog\dmadefs.h  \
            D:\Uni_programmer\Z8\include\zilog\eZ8.h  \
            D:\Uni_programmer\Z8\include\zilog\gpio.h  \
            D:\Uni_programmer\Z8\include\zilog\sio.h  \
            D:\Uni_programmer\Z8\include\zilog\uart.h  \
            D:\Uni_programmer\Z8\include\zilog\uartdefs.h
	 $(CC)  $(CFLAGS) C:\Users\Morten\Dropbox\Programmeringsprojekt\SpilBase\include\src\gameelements.c

