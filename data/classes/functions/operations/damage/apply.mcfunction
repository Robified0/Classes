execute if entity @s[nbt={Invulnerable:1b}] run tag @s add cl.track.Invulnerable

#Merge loot table for proper drops
execute if entity @s[tag=!cl.LTAdjusted,tag=!cl.isCustomMob,tag=!cl.track.Invulnerable] run function classes:main/loot_table/main

#Start damage
execute store result score @s[tag=!cl.track.Invulnerable] cl.CurrentHealth run data get entity @s[tag=!cl.track.Invulnerable] Health 1
scoreboard players operation @s[tag=!cl.track.Invulnerable] cl.CurrentHealth -= @e[type=marker,tag=cl.r.customDamage,limit=1,sort=nearest] cl.damageRandom

#Handle elemental weakness (set in effect file of spell for extra damage given)
execute if score @s[tag=!cl.track.Invulnerable] cl.damageWeakness matches 1.. run function classes:operations/damage/weakness

#Damage effect faked in classes:entities/vanilla/angry

# Will the mob be zero health? If so, kill it, unless it's the ender dragon.
# Ender dragon will just disappear with kill, and not activate animation.
execute if score @s[tag=!cl.track.Invulnerable] cl.CurrentHealth matches ..0 run kill @s[tag=!cl.track.Invulnerable,type=!minecraft:ender_dragon]

#Merge health
execute if score @s[tag=!cl.track.Invulnerable] cl.CurrentHealth matches 1.. store result entity @s[tag=!cl.track.Invulnerable] Health int 1 run scoreboard players get @s[tag=!cl.track.Invulnerable] cl.CurrentHealth

#Remove invulnerable tag
execute if entity @s[tag=cl.track.Invulnerable] run tag @s add cl.track.Invulnerable
