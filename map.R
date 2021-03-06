# -*- makefile -*-

MAP_EXTRA = dsf

map      : [X] GTK COMMON map MAP_EXTRA map-icon|no-icon

map      : [G] WINDOWS COMMON map MAP_EXTRA map.res|noicon.res

mapsolver :     [U] map[STANDALONE_SOLVER] MAP_EXTRA STANDALONE m.lib
mapsolver :     [C] map[STANDALONE_SOLVER] MAP_EXTRA STANDALONE

ALL += map[COMBINED] MAP_EXTRA

!begin gtk
GAMES += map
!end

!begin >list.c
    A(map) \
!end

!begin >wingames.lst
map.exe:Map
!end
