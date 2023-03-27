##Executing as player raycast has hit (abilities/spells/purify/raycast)

effect give @s minecraft:instant_health 2 0 true
particle minecraft:composter ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
particle minecraft:electric_spark ~ ~1 ~ 0.5 1 0.5 0.1 10 normal

#Cure negative effects
effect clear @s minecraft:blindness
effect clear @s minecraft:poison
effect clear @s minecraft:hunger
effect clear @s minecraft:levitation
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:nausea
effect clear @s minecraft:unluck
effect clear @s minecraft:wither
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.purify,sort=nearest,limit=1] run function classes:abilities/spells/purify/zprivate/end
