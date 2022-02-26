execute if entity @s[scores={cl.e.DeepFreeze=1..}] unless block ~ ~ ~ packed_ice unless block ~ ~1 ~ packed_ice run scoreboard players set @s cl.e.DeepFreeze 0
execute if entity @s[scores={cl.e.DeepFreeze=1..}] run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.4 0.4 0.4 2 10 force
execute if entity @s[scores={cl.e.DeepFreeze=1..}] run data merge entity @s {Fire:-20}
execute if entity @s[scores={cl.e.DeepFreeze=1..}] positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:packed_ice",Count:1b}},distance=..1.5]
execute if entity @s[scores={cl.e.DeepFreeze=1..}] run scoreboard players remove @s cl.e.DeepFreeze 1
execute if entity @s[scores={cl.e.DeepFreeze=..0}] run fill ~-1 ~-1 ~-1 ~2 ~2 ~2 air replace packed_ice
execute if entity @s[scores={cl.e.DeepFreeze=..0}] run data merge entity @s {NoAI:0b,Silent:0b,Invulnerable:0b}
execute if entity @s[scores={cl.e.DeepFreeze=..0}] run scoreboard players reset @s cl.e.DeepFreeze
