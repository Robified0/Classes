###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################


#Handle new players, and set them up
execute as @a[tag=!cl.o.Joined] run function classes:main/new_player/main

#Handle Raycasts
execute as @e[type=marker,tag=cl.r.slowcast] at @s run function classes:main/raycast/main

#Magic table
#execute as @e[type=glow_item_frame,tag=cl.magicTable,tag=!cl.magicTablePlaced] at @s run function classes:blocks/magictable/placed
execute as @e[type=item_display,tag=cl.magicTable] at @s run function classes:blocks/magictable/main

#RUNE TABLE
execute as @e[type=glow_item_frame,tag=cl.RuneTable,tag=!cl.RuneTablePlaced] at @s run function classes:blocks/runetable/placing/placed

#Handle logic for Rune table.
execute as @e[type=marker,tag=cl.RuneTable] at @s run function classes:blocks/runetable/main

# Stop SpiritEssence from burning
execute as @e[type=item,tag=!cl.t.processed,predicate=classes:items/souls/invulnerablecheck] run data merge entity @s {Invulnerable:1b}

#Mana Regen
execute as @a run function classes:main/mana_system/main

#Display Mana bar to players
execute as @a run function classes:main/mana_system/mana

#TP Markers to Earth Wall falling blocks
execute as @e[type=slime,scores={cl.spell.earthWall.move=1..}] at @s run function classes:abilities/spells/wall/place/move
execute as @e[type=armor_stand,scores={cl.spell.earthWall.move=1..}] at @s run function classes:abilities/spells/wall/place/move

#Handle Slimes & Armor Stands for Earth wall
execute as @e[type=slime,scores={cl.spell.earthWall=0..}] at @s run function classes:abilities/spells/wall/place/remove

#Tag items
execute as @e[type=item,tag=!cl.t.processed] run tag @s add cl.t.processed

#Test durability
execute as @a[tag=cl.Cooldown.20] run item modify entity @s weapon.mainhand classes:items/staff/cooldown20

#Detect Right Click
execute as @a[scores={cl.rightClick=1..}] at @s run function classes:weapons/staff/rightclick

#AOE Effect detection
execute as @e[type=area_effect_cloud] at @s run function classes:abilities/effects/aoeeffects

#Effect detection
execute as @a at @s run function classes:abilities/effects/main
