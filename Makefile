WARN	= -pedantic -Wall -Wmissing-prototypes -Wmissing-declarations -Wsign-compare
OPT	= -flto -O3 -funroll-loops -fno-exceptions -fno-rtti
CC      = emcc -I. -std=c89 $(OPT) $(WARN)
O_FILES = anim/sysanim.o \
	  base/base.o \
	  cdrom/cdrom.o \
	  data/dataappl.o \
	  data/database.o \
	  data/datacalc.o \
	  data/relation.o \
	  dialog/dialog.o \
	  dialog/talkappl.o \
	  disk/disk.o \
	  error/error.o \
	  gameplay/gp_app.o \
	  gameplay/gp.o \
	  gameplay/loadsave.o \
	  gameplay/tcreques.o \
	  gfx/gfx.o \
	  gfx/gfxnch4.o \
	  inphdl/inphdl.o \
	  landscap/access.o \
	  landscap/landscap.o \
	  landscap/hardware.o \
	  landscap/init.o \
	  landscap/raster.o \
	  landscap/scroll.o \
	  landscap/spot.o \
	  list/list.o \
	  living/bob.o \
	  living/living.o \
	  memory/memory.o \
	  organisa/organisa.o organisa/display.o \
	  planing/graphics.o \
	  planing/guards.o \
	  planing/io.o \
	  planing/main.o \
	  planing/planer.o \
	  planing/player.o \
	  planing/prepare.o \
	  planing/support.o \
	  planing/system.o \
	  planing/sync.o \
	  present/present.o present/presenta.o \
	  present/interac.o \
	  random/random.o \
	  scenes/cars.o \
	  scenes/dealer.o \
	  scenes/done.o \
	  scenes/evidence.o \
	  scenes/inside.o \
	  scenes/invest.o \
	  scenes/scenes.o \
	  scenes/tools.o \
	  sound/buffer.o \
	  sound/fmopl.o \
	  sound/fx.o \
	  sound/newsound.o \
	  sound/hsc.o \
	  story/story.o \
	  text/text.o


derclou: $(O_FILES)
	$(CC) -o $@ */*.o -sUSE_SDL=2 -sUSE_SDL_IMAGE=2 -sSDL2_IMAGE_FORMATS='["lbm"]' -o index.html -sASYNCIFY --preload-file assets --closure 1

.c.o:
	$(CC) -sUSE_SDL=2 -sUSE_SDL_IMAGE=2 -sSDL2_IMAGE_FORMATS='["lbm"]' -c -o $@ $<

clean:
	rm -f *~ *.o */*.o derclou
