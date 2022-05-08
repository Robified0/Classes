### Executing as Ranger player (operations/delay/20)

#Set Bonus Speed
execute store result score @s cl.o.maxHealth run attribute @s minecraft:generic.max_health base get
execute if entity @s[scores={cl.track.sneak=..0}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute if entity @s[scores={cl.track.sneak=1..}] run attribute @s minecraft:generic.movement_speed base set 0.14
execute unless entity @s[scores={cl.o.maxHealth=20}] run attribute @s minecraft:generic.max_health base set 20

#Mana Reset
execute if entity @s[scores={cl.Mana=-10..}] run scoreboard players reset @s cl.Mana
