###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

#Handle Raycasts
execute if entity @e[type=marker,tag=cl.r.slowcast] as @e[type=marker,tag=cl.r.slowcast] at @s run function classes:operations/raycast/main

#Handle Motion
execute if entity @e[type=#classes:motionaffected,tag=cl.t.motion_projectile,tag=!cl.t.motion_added] as @e[type=#classes:motionaffected,tag=cl.t.motion_projectile,tag=!cl.t.motion_added] run function classes:operations/motion/motion

#Handle scoreboard to time when last hit by player, and handle loot_table
execute if entity @e[type=!#nontarget,scores={cl.HitBySpell=0..}] as @e[type=!#nontarget,scores={cl.HitBySpell=0..}] run function classes:operations/hitbyspell

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!cl.o.Joined] as @a[tag=!cl.o.Joined] run function classes:main/new_player/main
execute if entity @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] as @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] run function classes:main/new_player/classselected

#Mana Regen
execute as @a[scores={cl.Class=3..4}] run function classes:main/mana_system/main

#Display Mana bar to players who have Mana score set (spellcasters only)
execute as @a[gamemode=!creative,gamemode=!spectator,scores={cl.Mana=-5..}] run function classes:main/mana_system/mana

#XP Handling for spells/Essence Summon Handling
execute if entity @e[type=item,nbt={Item:{tag:{cl.Custom:1b}}}] as @e[type=item,nbt={Item:{tag:{cl.Custom:1b}}}] run function classes:main/loot_table/acacia_button/main
execute if entity @e[type=item,nbt={Item:{tag:{cl.s.Spell:1b}}}] as @e[type=item,nbt={Item:{tag:{cl.s.Spell:1b}}}] run function classes:operations/preventspelldrops

#If player isn't around (dead), and keepInventory is off, display particles for dropped spells
execute if entity @e[type=item,tag=cl.o.item.spell] as @e[type=item,tag=cl.o.item.spell] at @s run particle minecraft:portal ~ ~0.1 ~ 0.04 0.05 0.04 0.1 1 force

#Kill fireballs that have been deflected
execute if entity @e[type=#classes:fireballs,tag=cl.t.newFireball] as @e[type=#classes:fireballs,tag=cl.t.newFireball] at @s run function classes:operations/motion/killfireball

#Essences
execute as @e[type=area_effect_cloud,tag=cl.EssenceMarker] run function classes:main/essences/main
