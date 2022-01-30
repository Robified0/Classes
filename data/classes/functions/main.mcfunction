###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

#Handle Motion
execute if entity @e[type=#classes:motionaffected] as @e[tag=motion_projectile,tag=!motion_added] run function classes:operations/motion/motion

#Handle scoreboard to time when last hit by player, and handle loot_table
scoreboard players remove @e[scores={cl.HitBySpell=1..}] cl.HitBySpell 1
scoreboard players reset @e[scores={cl.HitBySpell=..0}] cl.HitBySpell

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!cl.o.Joined] as @a[tag=!Joined] run function classes:main/new_player/main
execute if entity @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] as @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] run function classes:main/new_player/classselected

#Display Mana bar to players who have Mana score set (spellcasters only)
execute as @a[gamemode=!creative,gamemode=!spectator,scores={cl.Mana=-5..}] run function classes:main/mana_system/mana

#XP Handling for spells
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_button",Count:1b,tag:{XPOrb:1b}}}] run function classes:main/loot_table/xp

#Handle Anger quickly
execute as @e[type=#classes:passive,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!cl.isAngry] run tag @s add cl.isAngry
execute as @e[type=#classes:passive,nbt=!{AngerTime:0},tag=!cl.isAngry] run tag @s add cl.isAngry
execute as @e[type=#classes:passive,nbt={Brain:{memories:{"minecraft:angry_at":{}}}},tag=cl.isAngry] run tag @s remove cl.isAngry
execute as @e[type=#classes:passive,nbt={AngerTime:0},tag=cl.isAngry] run tag @s remove cl.isAngry

#Tag Owned Pets to Prevent Spell Damage to them
execute if entity @e[type=#classes:ownable,tag=!cl.Owned] as @e[type=#classes:ownable,tag=!cl.Owned] if data entity @s Owner run tag @s add cl.Owned
execute if entity @e[type=iron_golem,tag=!cl.Owned] as @e[type=iron_golem,tag=!cl.Owned,nbt={PlayerCreated:1b}] run tag @s add cl.Owned
execute if entity @e[type=snow_golem,tag=!cl.Owned] as @e[type=snow_golem,tag=!cl.Owned,nbt={PlayerCreated:1b}] run tag @s add cl.Owned

#Mana Regen
execute as @a[scores={cl.Class=3..4}] run function classes:main/mana_system/main

#Prevent Spell Drops
execute if entity @e[type=item,tag=!cl.o.item.processed] as @e[type=item,tag=!cl.o.item.processed] run function classes:operations/preventspelldrops

#If player isn't around (dead), and keepInventory is off, display particles for dropped spells
execute if entity @e[type=item,tag=cl.o.item.processed] as @e[type=item,tag=cl.o.item.processed] at @s run particle minecraft:portal ~ ~0.1 ~ 0.04 0.05 0.04 0.1 1 force

#Kill fireballs that have been deflected
scoreboard players add @e[type=fireball,tag=cl.newFireball] cl.newFireball 1
execute as @e[type=fireball,tag=cl.newFireball,scores={cl.newFireball=60..}] at @s run particle flame ~ ~ ~ 1 1 1 1 100 force @a
execute as @e[type=fireball,tag=cl.newFireball,scores={cl.newFireball=60..}] run kill @s
