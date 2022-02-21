###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

execute if entity @e[type=marker,tag=slowcast] run function classes:operations/raycast/main
#Handle Motion
execute if entity @e[type=#classes:motionaffected] as @e[type=#classes:motionaffected,tag=motion_projectile,tag=!motion_added] run function classes:operations/motion/motion

#Handle scoreboard to time when last hit by player, and handle loot_table
scoreboard players remove @e[scores={cl.HitBySpell=1..}] cl.HitBySpell 1
scoreboard players reset @e[scores={cl.HitBySpell=..0}] cl.HitBySpell

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!cl.o.Joined] as @a[tag=!Joined] run function classes:main/new_player/main
execute if entity @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] as @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] run function classes:main/new_player/classselected

#Display Mana bar to players who have Mana score set (spellcasters only)
execute as @a[gamemode=!creative,gamemode=!spectator,scores={cl.Mana=-5..}] run function classes:main/mana_system/mana

#XP Handling for spells
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_button",Count:1b,tag:{cl.Custom:1b}}}] run function classes:main/loot_table/acacia_button/main

#Mana Regen
execute as @a[scores={cl.Class=3..4}] run function classes:main/mana_system/main

#Prevent Spell Drops
execute if entity @e[type=item,tag=!cl.o.item.processed] as @e[type=item,tag=!cl.o.item.processed] run function classes:operations/preventspelldrops

#If player isn't around (dead), and keepInventory is off, display particles for dropped spells
execute if entity @e[type=item,tag=cl.o.item.spell] as @e[type=item,tag=cl.o.item.spell] at @s run particle minecraft:portal ~ ~0.1 ~ 0.04 0.05 0.04 0.1 1 force

#Kill fireballs that have been deflected
scoreboard players add @e[type=fireball,tag=cl.newFireball] cl.newFireball 1
execute as @e[type=fireball,tag=cl.newFireball,scores={cl.newFireball=60..}] at @s run particle flame ~ ~ ~ 1 1 1 1 100 force @a
execute as @e[type=fireball,tag=cl.newFireball,scores={cl.newFireball=60..}] run kill @s

#Essences
execute as @e[type=marker,tag=cl.EssenceMarker] run function classes:main/essences/main
