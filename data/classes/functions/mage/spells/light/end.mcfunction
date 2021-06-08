#execute positioned ^ ^ ^-0.25 unless block ^ ^ ^0.5 air if block ^ ^ ^-0.80 air run setblock ^ ^0.4 ^-1 minecraft:light keep
#execute positioned ^ ^ ^-0.25 if block ^ ^ ^0.5 air if block ^ ^ ^-0.80 air run setblock ^ ^ ^-0.8 minecraft:light keep
execute positioned ^ ^ ^-0.25 run summon minecraft:marker ^ ^ ^-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["light","counter","place"]}
execute as @e[type=marker,tag=light,tag=counter,tag=place] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:light keep
execute as @e[type=marker,tag=light,tag=counter,tag=place] run tag @s remove place
scoreboard players set @e[type=marker,tag=light,tag=counter,sort=nearest,limit=1] effLight 1200
scoreboard players reset @s slo_id
