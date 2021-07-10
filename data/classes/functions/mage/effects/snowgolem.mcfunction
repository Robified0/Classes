execute as @e[type=snow_golem,tag=summoned,scores={cl.summonCount=1..}] at @s run particle enchant ~ ~ ~ 0.1 1 0.1 1 10 force
execute as @e[type=snow_golem,tag=summoned] at @s positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~2 ~2 ~2 air replace snow
execute as @e[type=snow_golem,tag=summoned,scores={cl.summonCount=..0}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["removeSnow"]}
execute as @e[type=snow_golem,tag=summoned,scores={cl.summonCount=..0}] run kill @s
execute as @e[type=area_effect_cloud,tag=removeSnow] at @s positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~2 ~2 ~2 air replace snow
