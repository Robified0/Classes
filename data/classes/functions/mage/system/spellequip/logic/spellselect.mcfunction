#Run commands to fill inventory with right items based on selection
execute if score @s cl.spellMenu matches 1 run function classes:mage/system/spellequip/gui/firespells
execute if score @s cl.spellMenu matches 2 run function classes:mage/system/spellequip/gui/waterspells
execute if score @s cl.spellMenu matches 3 run function classes:mage/system/spellequip/gui/airspells
execute if score @s cl.spellMenu matches 4 run function classes:mage/system/spellequip/gui/earthspells
execute if score @s cl.spellMenu matches 0 run function classes:mage/system/spellequip/gui/magicspells
