#Do these things when spell hits
function classes:main/loot_table/main
effect give @s minecraft:instant_damage 1 0 true
particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.1 30 force
function classes:entities/vanilla/angry

#Playsound
execute at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute at @s as @e[type=marker,tag=cl.r.magicmissile,sort=nearest,limit=1] run function classes:mage/spells/magic/magicmissile/zprivate/end
