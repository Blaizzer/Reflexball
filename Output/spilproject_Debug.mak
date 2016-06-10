#
# ZDS II Make File - spilproject, Debug
#

CC = @C:\PROGRA~2\ZiLOG\ZDSII_~1.3\bin\eZ8cc
ASM = @C:\PROGRA~2\ZiLOG\ZDSII_~1.3\bin\eZ8asm
LINK = @C:\PROGRA~2\ZiLOG\ZDSII_~1.3\bin\eZ8link
LIB = @C:\PROGRA~2\ZiLOG\ZDSII_~1.3\bin\eZ8lib

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
#   -stdinc:"C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\Z8Encore_F640X"
#   -strict -usrinc:"C:\Users\Adam\Desktop\SpilBase\include" -NOwatch
#   -cpu:Z8F6403
#   -asmsw:" -cpu:Z8F6403 -define:_Z8F6403=1 -define:_Z8ENCORE_640_FAMILY=1 -define:_Z8ENCORE_F640X=1 -define:_MODEL_LARGE=1 -include:C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\Z8Encore_F640X -revaa"
CFLAGS = -sw:C:\Users\Adam\Desktop\SpilBase\Output\spilproject_Debug.ccsw
# assembler options
#   -debug -define:_Z8F6403=1 -define:_Z8ENCORE_640_FAMILY=1
#   -define:_Z8ENCORE_F640X=1 -define:_MODEL_LARGE=1 -genobj -NOigcase
#   -include:"C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\Z8Encore_F640X"
#   -list -NOlistmac -name -pagelen:56 -pagewidth:80 -quiet -sdiopt
#   -warn -NOzmasm -revaa -cpu:Z8F6403
AFLAGS = -sw:C:\Users\Adam\Desktop\SpilBase\Output\spilproject_Debug.asmsw

OUTDIR = C:\Users\Adam\Desktop\SpilBase\Output\

Debug: spilproject

deltarget: 
	@if exist C:\Users\Adam\Desktop\SpilBase\spilproject.lod  \
            del C:\Users\Adam\Desktop\SpilBase\spilproject.lod

clean: 
	@if exist C:\Users\Adam\Desktop\SpilBase\spilproject.lod  \
            del C:\Users\Adam\Desktop\SpilBase\spilproject.lod
	@if exist C:\Users\Adam\Desktop\SpilBase\Output\zsldevinit.obj  \
            del C:\Users\Adam\Desktop\SpilBase\Output\zsldevinit.obj
	@if exist C:\Users\Adam\Desktop\SpilBase\Output\main.obj  \
            del C:\Users\Adam\Desktop\SpilBase\Output\main.obj
	@if exist C:\Users\Adam\Desktop\SpilBase\Output\ansi.obj  \
            del C:\Users\Adam\Desktop\SpilBase\Output\ansi.obj
	@if exist C:\Users\Adam\Desktop\SpilBase\Output\func.obj  \
            del C:\Users\Adam\Desktop\SpilBase\Output\func.obj
	@if exist C:\Users\Adam\Desktop\SpilBase\Output\LUT.obj  \
            del C:\Users\Adam\Desktop\SpilBase\Output\LUT.obj
	@if exist C:\Users\Adam\Desktop\SpilBase\Output\LED.obj  \
            del C:\Users\Adam\Desktop\SpilBase\Output\LED.obj

rebuildall: clean Debug

relink: deltarget Debug

LIBS = 

OBJS =  \
            C:\Users\Adam\Desktop\SpilBase\Output\zsldevinit.obj  \
            C:\Users\Adam\Desktop\SpilBase\Output\main.obj  \
            C:\Users\Adam\Desktop\SpilBase\Output\ansi.obj  \
            C:\Users\Adam\Desktop\SpilBase\Output\func.obj  \
            C:\Users\Adam\Desktop\SpilBase\Output\LUT.obj  \
            C:\Users\Adam\Desktop\SpilBase\Output\LED.obj

spilproject: $(OBJS)
	 $(LINK)  @C:\Users\Adam\Desktop\SpilBase\Output\spilproject_Debug.linkcmd

C:\Users\Adam\Desktop\SpilBase\Output\zsldevinit.obj :  \
            C:\Users\Adam\Desktop\SpilBase\zsldevinit.asm  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\ez8dev.inc  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\gpio.inc
	 $(ASM)  $(AFLAGS) C:\Users\Adam\Desktop\SpilBase\zsldevinit.asm

C:\Users\Adam\Desktop\SpilBase\Output\main.obj :  \
            C:\Users\Adam\Desktop\SpilBase\ANSIProject\main.c  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\FORMAT.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDARG.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDIO.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\FORMAT.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDARG.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDIO.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\defines.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\dmadefs.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\ez8.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\gpio.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\SIO.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\uart.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\uartdefs.h  \
            C:\Users\Adam\Desktop\SpilBase\include\LED.h  \
            C:\Users\Adam\Desktop\SpilBase\include\ansi.h  \
            C:\Users\Adam\Desktop\SpilBase\include\func.h
	 $(CC)  $(CFLAGS) C:\Users\Adam\Desktop\SpilBase\ANSIProject\main.c

C:\Users\Adam\Desktop\SpilBase\Output\ansi.obj :  \
            C:\Users\Adam\Desktop\SpilBase\include\src\ansi.c
	 $(CC)  $(CFLAGS) C:\Users\Adam\Desktop\SpilBase\include\src\ansi.c

C:\Users\Adam\Desktop\SpilBase\Output\func.obj :  \
            C:\Users\Adam\Desktop\SpilBase\include\src\func.c  \
            C:\Users\Adam\Desktop\SpilBase\include\func.h
	 $(CC)  $(CFLAGS) C:\Users\Adam\Desktop\SpilBase\include\src\func.c

C:\Users\Adam\Desktop\SpilBase\Output\LUT.obj :  \
            C:\Users\Adam\Desktop\SpilBase\include\src\LUT.c  \
            C:\Users\Adam\Desktop\SpilBase\include\LUT.h
	 $(CC)  $(CFLAGS) C:\Users\Adam\Desktop\SpilBase\include\src\LUT.c

C:\Users\Adam\Desktop\SpilBase\Output\LED.obj :  \
            C:\Users\Adam\Desktop\SpilBase\include\src\LED.c  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\FORMAT.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDARG.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDIO.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\FORMAT.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDARG.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\std\STDIO.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\defines.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\dmadefs.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\ez8.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\gpio.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\SIO.H  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\uart.h  \
            C:\PROGRA~2\ZiLOG\ZDSII_~1.3\include\zilog\uartdefs.h  \
            C:\Users\Adam\Desktop\SpilBase\include\LED.h
	 $(CC)  $(CFLAGS) C:\Users\Adam\Desktop\SpilBase\include\src\LED.c

