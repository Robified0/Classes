execute if entity @s[scores={cl.e.TailWind=1..}] run particle minecraft:cloud ^ ^ ^-0.5 0.1 0.5 0.1 0.1 1 normal
execute if entity @s[scores={cl.e.TailWind=0..}] run scoreboard players remove @s cl.e.TailWind 1
execute if entity @s[scores={cl.e.TailWind=..0}] run attribute @s minecraft:generic.movement_speed modifier remove 02eaa265-68d9-4906-8095-6ea88b0e906d
execute if entity @s[scores={cl.e.TailWind=..0}] run tag @s remove cl.s.TailWind
execute if entity @s[scores={cl.e.TailWind=..0}] run scoreboard players reset @s cl.e.TailWind
