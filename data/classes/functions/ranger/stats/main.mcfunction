### Executing as Ranger player (operations/delay/20)

#Set Bonus Speed
execute if entity @s[scores={cl.Sneaking=..0}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute if entity @s[scores={cl.Sneaking=1..}] run attribute @s minecraft:generic.movement_speed base set 0.14

#Mana Reset
execute if entity @s[scores={cl.Mana=-10..}] run scoreboard players reset @s cl.Mana
