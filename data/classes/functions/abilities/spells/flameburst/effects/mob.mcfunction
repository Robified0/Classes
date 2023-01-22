#Process the damage/effects
data merge entity @s {Fire:100}
execute as @s[type=creeper] run function classes:entities/vanilla/creeper/fire

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

## Get damage score
# Set top damage first (this is the range minus the random below)
execute as @e[type=marker,tag=cl.r.flameburst,tag=cl.r.customDamage,sort=nearest,limit=1] run scoreboard players set @s cl.damageRange 4
# Run randomize function
execute as @e[type=marker,tag=cl.r.flameburst,tag=cl.r.customDamage,sort=nearest,limit=1] run function classes:operations/damage/random
#Boost it by the below to make sure it always does at *least* this amount
execute as @e[type=marker,tag=cl.r.flameburst,tag=cl.r.customDamage,sort=nearest,limit=1] run scoreboard players add @s cl.damageRandom 4

#Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/fire] run scoreboard players set @s cl.damageWeakness 1

#Handle damage now
function classes:operations/damage/apply

# Particle effect
particle flame ~ ~0.3 ~ 0.1 0.5 0.1 0.1 100 force

#Sound effect
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Flame Burst!","bold":true,"color":"#FF3034"}]
