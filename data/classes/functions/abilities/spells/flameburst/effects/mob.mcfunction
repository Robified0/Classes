#Process the damage/effects
data merge entity @s {Fire:100}
execute as @s[type=creeper] run function classes:entities/vanilla/creeper/fire

#Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/fire] run damage @s 8 minecraft:on_fire by @p
execute unless entity @s[type=#classes:magic/elemental/weakness/fire] run damage @s 6 minecraft:on_fire by @p

# Particle effect
particle flame ~ ~0.3 ~ 0.1 0.5 0.1 0.1 100 force

#Sound effect
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Flame Burst!","bold":true,"color":"#FF3034"}]
