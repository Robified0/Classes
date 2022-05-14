#Run commands to fill inventory with right items based on selection
execute if score @s cl.spellMenu matches 1 run function classes:healer/system/spellequip/gui/healingspells
execute if score @s cl.spellMenu matches 2 run function classes:healer/system/spellequip/gui/buffspells
execute if score @s cl.spellMenu matches 3 run function classes:healer/system/spellequip/gui/smitingspells
