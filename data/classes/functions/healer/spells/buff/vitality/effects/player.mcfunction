effect give @s minecraft:health_boost 60 1 false
effect give @s minecraft:instant_health 1 1 true
scoreboard players set @s cl.e.Vitality 1200

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.vitality,sort=nearest,limit=1] run function classes:healer/spells/buff/vitality/zprivate/end
