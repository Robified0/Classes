#Run commands to fill inventory with right items based on selection
execute if score @s cl.spellMenu matches 1 run function classes:operations/spellequip/player/mage/firespells
execute if score @s cl.spellMenu matches 2 run function classes:operations/spellequip/player/mage/waterspells
execute if score @s cl.spellMenu matches 3 run function classes:operations/spellequip/player/mage/airspells
execute if score @s cl.spellMenu matches 4 run function classes:operations/spellequip/player/mage/earthspells
execute if score @s cl.spellMenu matches 0 run function classes:operations/spellequip/player/mage/magicspells

#Handle nav controls - needs to move to detect.
#execute if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{cl.spellselect.Exit:1b}}]}] run scoreboard players set @s cl.spellMenu -2
