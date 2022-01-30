#Check class, run appropiate setup.
execute if entity @s[scores={cl.Class=3..4}] run function classes:main/new_player/setmana

#Tag player
tag @s add cl.o.ClassSelected
