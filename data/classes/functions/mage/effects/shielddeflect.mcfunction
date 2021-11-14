execute at @s[tag=!motion_projectile,type=#minecraft:arrows] run playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 0.3 2
data merge entity @s[type=#minecraft:arrows] {damage:6b}

#The following is currently broken due to MC-226344, but leaving in for now
data modify entity @s[tag=!motion_projectile] Owner set from entity @p[scores={cl.Class=3}] UUID
execute at @e[tag=!motion_projectile,type=#classes:fireballs] run playsound minecraft:entity.ghast.shoot ambient @a ~ ~ ~ 0.3 1.5
tag @s add motion_projectile
