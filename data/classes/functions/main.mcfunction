###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################


#Track activity of Spellcasters for Spell Equip system
execute as @a[scores={cl.spell.equip.start=1..},predicate=classes:checkclass/spellcaster] at @s run function classes:operations/track/spellequip/main

#Handle Raycasts
execute as @e[type=marker,tag=cl.r.slowcast] at @s run function classes:operations/raycast/main

#Magic table
execute as @e[type=glow_item_frame,tag=cl.magicTable,tag=!cl.magicTablePlaced] at @s run function classes:blocks/magictable/placed
execute as @a at @s as @e[type=marker,tag=cl.magicTable] at @s run function classes:blocks/magictable/main

# Stop SpiritEssence from burning
execute as @e[type=item,tag=!cl.t.processed,predicate=classes:items/spiritessence/invulnerablecheck] run data merge entity @s {Invulnerable:1b}

#Function for all new players, to ensure scoreboards are set up
execute as @a[tag=!cl.o.Joined] at @s run function classes:main/new_player/main
execute as @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] at @s run function classes:main/new_player/classselected

#Mana Regen
execute as @a[predicate=classes:checkclass/spellcaster] run function classes:main/mana_system/main

#Display Mana bar to players who have Mana score set (spellcasters only)
execute as @a[predicate=classes:checkclass/spellcaster] run function classes:main/mana_system/mana

#XP Handling for spells
execute as @e[type=item,tag=!cl.t.processed,nbt={Item:{tag:{cl.Custom:1b}}}] run function classes:main/loot_table/acacia_button/main

#Check for arrows shot
execute as @a[scores={cl.t.usedBow=1..},predicate=classes:items/infinitybow] at @s run function classes:operations/items/infinitybow

#TP Markers to Earth Wall falling blocks
execute as @e[type=slime,scores={cl.spell.earthWall.move=1..}] at @s run function classes:mage/spells/earth/wall/place/move
execute as @e[type=armor_stand,scores={cl.spell.earthWall.move=1..}] at @s run function classes:mage/spells/earth/wall/place/move

#Handle Slimes & Armor Stands for Earth wall
execute as @e[type=slime,scores={cl.spell.earthWall=0..}] at @s run function classes:mage/spells/earth/wall/place/remove

#Tag items
execute as @e[type=item,tag=!cl.t.processed] run tag @s add cl.t.processed
