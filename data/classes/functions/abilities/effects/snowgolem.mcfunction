execute if entity @s[scores={cl.summonCount=1..}] run particle enchant ~ ~ ~ 0.1 1 0.1 1 10 force
execute positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~2 ~2 ~2 air replace snow
execute at @s as @e[type=minecraft:snowball,distance=..2] run tag @s add cl.snowgolem.snowball
execute as @e[type=minecraft:snowball,tag=cl.snowgolem.snowball] at @s run effect give @e[type=!#classes:nontarget,distance=..2,sort=nearest,limit=1] minecraft:slowness 3 1 false
execute if entity @s[scores={cl.summonCount=..0}] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1
execute if entity @s[scores={cl.summonCount=..0}] run tp @s ~ -4096 ~
