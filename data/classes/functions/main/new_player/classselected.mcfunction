#Check class, run appropiate setup.
execute if entity @s[scores={cl.Class=3}] run function classes:main/new_player/mage
execute if entity @s[scores={cl.Class=4}] run function classes:main/new_player/healer

#Tag player
tag @s add ClassSelected
