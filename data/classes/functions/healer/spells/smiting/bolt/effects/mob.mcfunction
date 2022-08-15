#Do these things when spell hits
function classes:entities/vanilla/angry

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute at @s as @e[type=marker,tag=cl.r.bolt,sort=nearest,limit=1] run function classes:healer/spells/smiting/bolt/zprivate/end

#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.bolt,sort=nearest,limit=1] cl.slo_id

#Apply Effects
execute as @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/holy] run scoreboard players set @s cl.damageWeakness 1

#Handle damage now
function classes:operations/damage/apply

# Particle effect
particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.05 5 normal

#Playsound
execute at @s run playsound minecraft:block.amethyst_cluster.step player @a ~ ~ ~ 1 2
