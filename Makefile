include	Makefile.config

PROJECT=tilemaptest
SRCC=main.c
SRCS=data.s
SRCH=
OBJS=$(SRCC:.c=.o) $(SRCS:.s=.o)
OTHEROBJS=
DATA=sl2.png sld1.lev
RMVLIBS=display.o interrupt.o rmvlib.a

include Makefile.example

data.o: slt2.map slt2.pal sld1.lev

slt2.map slt2.pal: sl2.png
	$(CONVERTER) --binary --clut --overwrite $<
