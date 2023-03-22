### Give Knights bonuses if within 10 blocks of raiders
## As: Knight
## From: main/delay/20

#Give Knight effects
effect give @s minecraft:strength 2 0 false
effect give @s minecraft:speed 2 0 true

#Give illagers effects
execute as @e[type=#classes:illagers,tag=cl.t.Raider,distance=..10] run function classes:knight/system/raid/illagers
