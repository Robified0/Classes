execute if entity @s[scores={cl.e.DeepFreeze=1..}] run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.4 0.4 0.4 2 10 force
execute if entity @s[scores={cl.e.DeepFreeze=1..}] run data merge entity @s {Fire:-20,NoAI:1b,Silent:1b,Invulnerable:1b}
execute if entity @s[scores={cl.e.DeepFreeze=1..}] positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:packed_ice",Count:1b}},distance=..1.5]
execute if entity @s[scores={cl.e.DeepFreeze=1..}] run scoreboard players remove @s cl.e.DeepFreeze 1
execute if entity @s[scores={cl.e.DeepFreeze=..0}] run kill @e[type=block_display,limit=2,sort=nearest,tag=cl.e.DeepFreeze]
execute if entity @s[scores={cl.e.DeepFreeze=..0}] run data merge entity @s {NoAI:0b,Silent:0b,Invulnerable:0b}
execute if entity @s[scores={cl.e.DeepFreeze=..0}] run scoreboard players reset @s cl.e.DeepFreeze
