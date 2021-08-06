###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

#Handle scoreboard to time when last hit by player, and run XP convertor function
scoreboard players remove @s[scores={cl.HitBySpell=1..}] cl.HitBySpell 1
scoreboard players reset @s[scores={cl.HitBySpell=..0}] cl.HitBySpell

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!Joined] as @a[tag=!Joined] run function classes:operations/newplayer

#Make sure equipSpell is always enabled for all players when reading/holding spellbook.
scoreboard players enable @a[predicate=classes:checkarmor/mage/spellbook] cl.equipSpell
scoreboard players reset @a[predicate=!classes:checkarmor/mage/spellbook] cl.equipSpell

#Super hacky, will delete - gives items after selection of class.
execute as @a[scores={cl.Class=3},tag=!Equipped] run function classes:operations/give
execute as @a[scores={cl.Class=3}] run tag @s add Equipped

#Display Mana bar to players
execute as @a[gamemode=!creative,gamemode=!spectator,scores={cl.Class=3}] run function classes:mage/mana/mana

#Mage Switching spells
execute if entity @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3}] as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3}] run function classes:mage/system/wand/switch/switch

#Healer Switching Spells
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=5}] run function classes:healer/wand/basewand/switch/slot1
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=1}] run function classes:healer/wand/basewand/switch/slot2
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=2}] run function classes:healer/wand/basewand/switch/slot3
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=3}] run function classes:healer/wand/basewand/switch/slot4
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=4}] run function classes:healer/wand/basewand/switch/slot5
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=1..5}] run scoreboard players add @s cl.currSpellSel 1
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=6}] run scoreboard players set @s cl.currSpellSel 1
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=0}] run scoreboard players set @s cl.currSpellSel 1

#Check for players selecting "Clear Wand" in book
execute as @a[scores={cl.equipSpell=-1}] run function classes:operations/clearwand
execute as @a[scores={cl.equipSpell=-2}] run function classes:mage/system/load-spell-book

#Check for triggers being activated to equip spell
execute as @a[scores={cl.equipSpell=1..,cl.loadSpell=0..5,cl.ReadBook=1..}] run function classes:equip

#Handle max spells, and messaging.
execute as @a[scores={cl.equipSpell=1..,cl.loadSpell=6}] run tellraw @s {"text":"You're maxed out. Clear your wand to equip other spells."}
execute as @a[scores={cl.equipSpell=1..,cl.loadSpell=6}] run scoreboard players reset @s cl.equipSpell

#XP Handling for spells
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_button",Count:1b,tag:{XPOrb:1b}}}] run function classes:main/loot_table/xp

#Tag Owned Pets to Prevent Spell Damage to them
execute as @e[type=#classes:ownable,tag=!cl.Owned] if data entity @s Owner run tag @s add cl.Owned
execute as @e[type=iron_golem,tag=!cl.Owned,nbt={PlayerCreated:1b}] run tag @s add cl.Owned
execute as @e[type=snow_golem,tag=!cl.Owned,nbt={PlayerCreated:1b}] run tag @s add cl.Owned

#Reset scoreboards
scoreboard players remove @a[scores={cl.Cooldown=1..}] cl.Cooldown 1
scoreboard players set @a cl.rightClick 0
scoreboard players set @a cl.Sneaking 0
scoreboard players set @a cl.Moved 0

#Mana Regen (subject to change) ManaRegenSec is 20 * # of seconds for point of Mana to regen every # of seconds (60 = 1 point of Mana every second)
scoreboard players add @a[scores={cl.ManaRegenSec=..59,cl.Mana=..9}] cl.ManaRegenSec 1
scoreboard players add @a[scores={cl.ManaRegenSec=60,cl.Mana=..9}] cl.Mana 1
scoreboard players set @a[scores={cl.ManaRegenSec=60}] cl.ManaRegenSec 1
