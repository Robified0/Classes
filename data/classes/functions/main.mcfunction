###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

#Handle scoreboard to time when last hit by player, and handle loot_table
scoreboard players remove @e[scores={cl.HitBySpell=1..}] cl.HitBySpell 1
scoreboard players reset @e[scores={cl.HitBySpell=..0}] cl.HitBySpell

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!Joined] as @a[tag=!Joined] run function classes:main/new_player/main
execute if entity @a[scores={cl.Class=1..},tag=!ClassSelected] as @a[scores={cl.Class=1..},tag=!ClassSelected] run function classes:main/new_player/classselected

#Make sure equipSpell is always enabled for all players when reading/holding spellbook.
scoreboard players enable @a[predicate=classes:checkarmor/mage/spellbook] cl.equipSpell
scoreboard players reset @a[predicate=!classes:checkarmor/mage/spellbook] cl.equipSpell

#Super hacky, will delete - gives items after selection of class.
execute as @a[scores={cl.Class=3},tag=!Equipped] run function classes:operations/give/mage
execute as @a[scores={cl.Class=4},tag=!Equipped] run function classes:operations/give/healer
execute as @a[scores={cl.Class=3..4}] run tag @s add Equipped

#Display Mana bar to players who have Mana score set (spellcasters only)
execute as @a[gamemode=!creative,gamemode=!spectator,scores={cl.Mana=-5..}] run function classes:main/mana_system/mana

#Handle max spells, and messaging.
execute as @a[scores={cl.equipSpell=1..,cl.loadSpell=6}] run tellraw @s {"text":"You're maxed out. Clear your wand to equip other spells."}

#XP Handling for spells
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_button",Count:1b,tag:{XPOrb:1b}}}] run function classes:main/loot_table/xp

#Tag Owned Pets to Prevent Spell Damage to them
execute as @e[type=#classes:ownable,tag=!cl.Owned] if data entity @s Owner run tag @s add cl.Owned
execute as @e[type=iron_golem,tag=!cl.Owned,nbt={PlayerCreated:1b}] run tag @s add cl.Owned
execute as @e[type=snow_golem,tag=!cl.Owned,nbt={PlayerCreated:1b}] run tag @s add cl.Owned

#Mana Regen
execute as @a[scores={cl.Class=3..4}] run function classes:main/mana_system/main

#Handle Motion
execute as @e[tag=motion_projectile,tag=!motion_added] at @s rotated as @p run function classes:operations/apply_motion
