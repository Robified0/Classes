##Executing as player raycast has hit (healer/spells/healing/purify/raycast)

effect give @s minecraft:instant_health 2 0 true
particle minecraft:composter ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
particle minecraft:electric_spark ~ ~1 ~ 0.5 1 0.5 0.1 10 normal

#Cure negative effects
effect clear @s blindness
effect clear @s poison
effect clear @s hunger
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s unluck
effect clear @s wither
effect clear @s slowness

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.purify,sort=nearest,limit=1] run function classes:healer/spells/healing/purify/zprivate/end
