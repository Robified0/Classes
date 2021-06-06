execute as @e[tag=DeepFreeze,scores={effDeepFreeze=1..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.4 0.4 0.4 2 10 normal
execute if entity @e[scores={effDeepFreeze=1..}] run scoreboard players remove @e[scores={effDeepFreeze=1..}] effDeepFreeze 1
execute as @e[tag=DeepFreeze,scores={effDeepFreeze=..0}] run tag @s remove DeepFreeze
execute as @e[tag=DeepFreeze,scores={effDeepFreeze=..0}] run scoreboard players reset @s effDeepFreeze
