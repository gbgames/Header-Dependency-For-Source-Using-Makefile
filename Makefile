GAMESRCS := $(shell ls source/*.cpp)
GAMEOBJS := $(patsubst source/%.cpp, source/obj/%.o, $(GAMESRCS))

PROJECTNAME = makedepends

GAME_INCLUDES = -Isource/ 
CFLAGS = -fno-stack-protector -Wall -Wno-unknown-pragmas -Wno-format -g -DDEBUG 
CPP = g++

all:  source/obj $(PROJECTNAME) 

source/obj:
	mkdir -p source/obj

$(PROJECTNAME):	$(GAMEOBJS) 
	$(CPP) -o $(PROJECTNAME) $(GAMEOBJS) $(GAME_LINKS)

source/obj/%.o: source/%.cpp
	@echo "------------------------------------------COMPILING $<"
	$(CPP) -M -MF $(subst .o,.d,$@) -MT "$@ $(subst .o,.d,$@)" $<
	$(CPP) $(CFLAGS) $(GAME_INCLUDES) -c $< -o $@


clean:
	rm -rf $(PROJECTNAME) $(GAMEOBJS) 
	rm -rf source/obj

-include $(GAMEOBJS:.o=.d)
