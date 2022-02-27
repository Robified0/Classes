#Do these things when spell hits
scoreboard players set @s cl.HitBySpell 100
function classes:main/loot_table/main
effect give @s minecraft:instant_health 1 2 true
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 1 10 normal
particle minecraft:electric_spark ^-0.3 ^ ^0.3 0.3 0.3 0.3 1 20 force
function classes:entities/vanilla/angry

#Edit comment/uncomment if you want it to continue/end when it hits a target
#execute at @s as @e[type=marker,tag=cl.r.holystrike,sort=nearest,limit=1] run function classes:healer/spells/healing/holystrike/zprivate/end
