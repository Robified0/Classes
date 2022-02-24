execute store result score @s cl.b.health run data get entity @s Health 1
execute as @s[type=ender_dragon] run playsound minecraft:entity.ender_dragon.hurt
scoreboard players remove @s[type=ender_dragon] cl.b.health 3
execute store result entity @s Health float 1 run scoreboard players get @s cl.b.health
execute at @s run kill @e[type=marker,tag=cl.r.torch,sort=nearest,limit=1]
