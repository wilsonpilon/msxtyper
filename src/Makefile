TARGET = menu
M80 = N80
L80 = LK80
LIB80 = LB80
LFLAGS = --code 0100h --data 0300h

INC = msx.asm
SOURCES = main.asm video.asm bios.asm screen.asm alfabeto.asm mathpack.asm cursor.asm
OBJ = $(SOURCES:.asm=.rel)

.PHONY: clean

all: $(OBJ) $(TARGET).dsk

$(TARGET).dsk: $(TARGET).com
	touch $(TARGET).dsk
	rm $(TARGET).dsk
	wrdsk $(TARGET).dsk ../res/* *

$(TARGET).com: $(OBJ)
	$(L80) $(LFLAGS) --output-file $(TARGET).com $(OBJ)

%.rel: %.asm
	$(M80) $< $@

clean:
	touch $(TARGET).rel
	touch $(TARGET).com
	touch $(TARGET).dsk
	rm *.rel
	rm *.com
	rm *.dsk

run:
	'c:\Program Files\openMSX\openmsx.exe' -machine Boosted_MSX2_EN -diska ./$(TARGET).dsk &
