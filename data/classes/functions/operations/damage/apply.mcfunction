#Merge loot table for proper drops
execute if entity @s[tag=!cl.LTAdjusted,tag=!cl.isCustomMob] run function classes:main/loot_table/main

#Start damage
execute store result score @s cl.CurrentHealth run data get entity @s Health 1
scoreboard players operation @s cl.CurrentHealth -= @e[type=marker,tag=cl.r.customDamage,limit=1,sort=nearest] cl.damageRandom

#Handle elemental weakness (set in effect file of spell for extra damage given)
execute if score @s cl.damageWeakness matches 1.. run function classes:operations/damage/weakness

#Fake the damage effect
execute if entity @s[type=!#classes:undead] run effect give @s minecraft:instant_damage 1 31 true
execute if entity @s[type=#classes:undead] run effect give @s minecraft:instant_health 1 31 true

# Will the mob be zero health? If so, kill it, unless it's the ender dragon.
# Ender dragon will just disappear with kill, and not activate animation.
execute if score @s cl.CurrentHealth matches ..0 run kill @s[type=!minecraft:ender_dragon]


#Merge health
execute if score @s cl.CurrentHealth matches 1.. store result entity @s Health int 1 run scoreboard players get @s cl.CurrentHealth
