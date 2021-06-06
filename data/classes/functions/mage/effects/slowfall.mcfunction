execute as @a[tag=SlowFall,scores={effSlowFall=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0.3 0.1 0.3 0.01 1 normal
execute if entity @a[scores={effSlowFall=1..}] run scoreboard players remove @a[scores={effSlowFall=1..}] effSlowFall 1
execute as @a[tag=SlowFall,scores={effSlowFall=..0}] run tag @s remove SlowFall
execute as @a[tag=SlowFall,scores={effSlowFall=..0}] run scoreboard players reset @s effSlowFall
