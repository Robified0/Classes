#Check class, run appropiate setup.
execute if entity @s[scores={cl.Class=1}] run function classes:main/new_player/class/knight
execute if entity @s[scores={cl.Class=2}] run function classes:main/new_player/class/ranger
execute if entity @s[scores={cl.Class=3}] run function classes:main/new_player/class/mage
execute if entity @s[scores={cl.Class=4}] run function classes:main/new_player/class/healer

#Tag player
tag @s add cl.o.ClassSelected
