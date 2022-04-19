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

# Stop SpiritEssence from burning
execute as @e[type=item,tag=!cl.t.processed,predicate=classes:items/spiritessence/invulnerablecheck] run data merge entity @s {Invulnerable:1b}

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!cl.o.Joined] as @a[tag=!cl.o.Joined] run function classes:main/new_player/main
execute if entity @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] as @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] run function classes:main/new_player/classselected

#Mana Regen
execute as @a[predicate=classes:checkplayer/spellcaster] run function classes:main/mana_system/main

#Display Mana bar to players who have Mana score set (spellcasters only)
execute as @a[predicate=classes:checkplayer/spellcaster] run function classes:main/mana_system/mana

#XP Handling for spells/Essence Summon Handling
execute if entity @e[type=item,tag=!cl.t.processed,nbt={Item:{tag:{cl.Custom:1b}}}] as @e[type=item,nbt={Item:{tag:{cl.Custom:1b}}}] run function classes:main/loot_table/acacia_button/main
execute if entity @a[scores={cl.t.dropItem=1..}] as @e[type=item,nbt={Item:{tag:{cl.s.Spell:1b}}}] run function classes:operations/items/preventspelldrops

#Check for arrows shot
execute as @a[scores={cl.t.usedBow=1..},predicate=classes:items/infinitybow] at @s run function classes:operations/items/infinitybow

#Kill fireballs that have been deflected
execute if entity @e[type=#classes:fireballs,tag=cl.t.newFireball] as @e[type=#classes:fireballs,tag=cl.t.newFireball] at @s run function classes:operations/motion/killfireball

#Essences
execute as @e[type=area_effect_cloud,tag=cl.EssenceMarker] run function classes:main/essences/main
