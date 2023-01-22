##Executing as player raycast has hit (abilities/spells/heal/raycast)

effect give @s minecraft:instant_health 2 0 true
particle minecraft:composter ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
particle minecraft:electric_spark ~ ~1 ~ 0.5 1 0.5 0.1 10 normal
effect give @s minecraft:instant_health 2 0 true

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.heal,sort=nearest,limit=1] run function classes:abilities/spells/heal/zprivate/end
