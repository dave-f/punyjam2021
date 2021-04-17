#
# Makefile

INFORM       := ../Inform6/Release/Inform6.exe
INFORM_FLAGS := -v5es # -D
INFORM_LIB   := ../Inform6Lib/
PUNY_FLAGS   := -v3es # -D
PUNY_LIB     := ../PunyInform/lib
GAME_PUNY    := jam.z3
RM           := del

.PHONY: all clean run

all: $(GAME_PUNY)

$(GAME_PUNY): jam.inf
	$(INFORM) $(PUNY_FLAGS) +$(PUNY_LIB) jam.inf

clean:
	@$(RM) $(GAME_PUNY)

