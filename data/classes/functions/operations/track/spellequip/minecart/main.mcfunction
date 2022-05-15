scoreboard players set @s cl.detect.book 1
function classes:operations/track/spellequip/minecart/summon

#Run change of inventory
execute if score @s cl.Class matches 3 run function classes:mage/system/spellequip/gui/main
execute if score @s cl.Class matches 4 run function classes:healer/system/spellequip/gui/main

#Clear Hotbar (must come last out of this section, otherwise the arguments will evaluate to false)
function classes:operations/track/spellequip/clear/hotbar
scoreboard players set @s cl.spell.equip.start 1
scoreboard players set @s cl.detect.book 0
