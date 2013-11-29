PROG=segmentation-fault

SRCDIRS:=.

include Makefile.universe

$(GCHDRS) $(OBJS): $(XNUM)
$(PROG) $(GCHDRS) $(OBJS) $(SRCMODS) $(HDRMODS): $(MAKEFILE_LIST_SANS_MODS)
$(GCHDRS) $(OBJS) $(SRCMODS) $(HDRMODS): ADDCFLAGS+=$(VALFLAGS_X)

OPTFLAGS:=-g -O0
WARNFLAGS:=-Wall -Wextra -Werror -W -Wundef -Wshadow -Wcast-qual -Winline -Wno-long-long -fsigned-char -ansi

TOCLEAN-OUTPUTS+=core

run:	$(PROG)
	./$<
