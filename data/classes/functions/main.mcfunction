###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

#Make sure 0 is avoided.
execute if entity @s[scores={loadSpell=0}] run scoreboard players set @s loadSpell 1

#Function for all new players, to ensure scoreboards are set up
execute as @a[tag=!Joined] run function classes:operations/newplayer
execute as @a[tag=!Joined] run scoreboard players set @s Mana 0
execute as @a[tag=!Joined] run scoreboard players set @s ManaRegenSec 0
execute as @a[tag=!Joined] run tag @s add Joined

#Make sure equipSpell is always enabled for all players when reading a book.
scoreboard players enable @a[scores={ReadBook=1..}] equipSpell
scoreboard players set @a[scores={Moved=1..}] ReadBook 0

#Display Mana bar to players
function classes:mage/mana/mana

#Mage Switching spells

execute as @a[scores={Sneaking=1..,rightClick=1..,class=3,currentSpellSel=4}] run function classes:mage/wand/basewand/switch/slot1
execute as @a[scores={Sneaking=1..,rightClick=1..,class=3,currentSpellSel=1}] run function classes:mage/wand/basewand/switch/slot2
execute as @a[scores={Sneaking=1..,rightClick=1..,class=3,currentSpellSel=2}] run function classes:mage/wand/basewand/switch/slot3
execute as @a[scores={Sneaking=1..,rightClick=1..,class=3,currentSpellSel=3}] run function classes:mage/wand/basewand/switch/slot4
execute as @a[scores={Sneaking=1..,rightClick=1..,class=3,currentSpellSel=1..4}] run scoreboard players add @s currentSpellSel 1
execute as @a[scores={Sneaking=1..,rightClick=1..,class=3,currentSpellSel=5}] run scoreboard players set @s currentSpellSel 1
execute as @a[scores={Sneaking=1..,rightClick=1..,class=3,currentSpellSel=0}] run scoreboard players set @s currentSpellSel 1

#Healer Switching Spells
execute as @a[scores={Sneaking=1..,rightClick=1..,class=4,currentSpellSel=4}] run function classes:healer/wand/basewand/switch/slot1
execute as @a[scores={Sneaking=1..,rightClick=1..,class=4,currentSpellSel=1}] run function classes:healer/wand/basewand/switch/slot2
execute as @a[scores={Sneaking=1..,rightClick=1..,class=4,currentSpellSel=2}] run function classes:healer/wand/basewand/switch/slot3
execute as @a[scores={Sneaking=1..,rightClick=1..,class=4,currentSpellSel=3}] run function classes:healer/wand/basewand/switch/slot4

#Check for players selecting "Clear Wand" in book
execute as @a[scores={equipSpell=-1}] run function classes:operations/clearwand

#Check for triggers being activated to equip spell
execute as @a[scores={equipSpell=1..,loadSpell=0..4}] run function classes:equip

#Handle max spells, and messaging.
execute as @a[scores={equipSpell=1..,loadSpell=5}] run tellraw @s {"text":"You're maxed out. Clear your wand to equip other spells."}
execute as @a[scores={equipSpell=1..,loadSpell=5}] run scoreboard players set @s equipSpell 0


#Reset scoreboards
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1
scoreboard players set @a rightClick 0
scoreboard players set @a Sneaking 0
scoreboard players set @a Moved 0

#Mana Regen (subject to change) ManaRegenSec is 20 * # of seconds for point of Mana to regen every # of seconds (60 = 1 point of Mana every second)
scoreboard players add @a[scores={ManaRegenSec=..99,Mana=..9}] ManaRegenSec 1
scoreboard players add @a[scores={ManaRegenSec=100,Mana=..9}] Mana 1
scoreboard players set @a[scores={ManaRegenSec=100}] ManaRegenSec 1
