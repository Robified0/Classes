execute as @e[tag=StopUndead,scores={cl.e.StopUndead=1..}] run effect give @s slowness 2 5 true
execute as @e[tag=StopUndead,scores={cl.e.StopUndead=1..}] at @s anchored feet run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.25 1 force
execute if entity @e[scores={cl.e.StopUndead=1..}] run scoreboard players remove @e[scores={cl.e.StopUndead=1..}] cl.e.StopUndead 1
execute as @e[tag=StopUndead,scores={cl.e.StopUndead=..0}] run tag @s remove StopUndead
execute as @e[scores={cl.e.StopUndead=..0}] run scoreboard players reset @s cl.e.StopUndead
