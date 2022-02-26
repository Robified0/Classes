##Executing as undead enemy raycast has hit (healer/spells/healing/heal/raycast)

scoreboard players set @s cl.HitBySpell 100
function classes:main/loot_table/main
effect give @s minecraft:instant_health 1 1 true
function classes:entities/vanilla/angry
particle minecraft:composter ~ ~ ~ 0.5 1 0.5 0.1 30 normal
particle minecraft:electric_spark ~ ~ ~ 0.5 1 0.5 0.1 10 normal

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.heal,sort=nearest,limit=1] run function classes:healer/spells/healing/heal/zprivate/end
