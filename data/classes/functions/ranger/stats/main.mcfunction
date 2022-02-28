### Executing as Ranger player (operations/delay/20)

#Set Bonus Speed
execute if entity @s[scores={cl.Sneaking=..0}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute if entity @s[scores={cl.Sneaking=..0}] unless data entity @s Attributes[{Base: 0.12d,Name:"minecraft:generic.movement_speed"}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute if entity @s[scores={cl.Sneaking=1..}] unless data entity @s Attributes[{Base: 0.14d,Name:"minecraft:generic.movement_speed"}] run attribute @s minecraft:generic.movement_speed base set 0.14
