#Do these things when spell hits
function classes:main/loot_table/main
effect give @s minecraft:instant_health 1 0 true
particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 5 normal
function classes:entities/vanilla/angry

#Playsound
execute at @s run playsound minecraft:block.amethyst_cluster.step player @a ~ ~ ~ 1 2

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute at @s as @e[type=marker,tag=cl.r.bolt,sort=nearest,limit=1] run function classes:healer/spells/smiting/bolt/zprivate/end
