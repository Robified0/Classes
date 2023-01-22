##Executing as player raycast has hit (abilities/spells/healplosion/raycast)

effect give @s minecraft:instant_health 1 1 true
particle minecraft:composter ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 40 normal
particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.3 20 normal

function classes:abilities/spells/healplosion/effects/apply

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.healplosion,sort=nearest,limit=1] run function classes:abilities/spells/healplosion/zprivate/end
