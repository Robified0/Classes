scoreboard players set @s cl.detect.book 1
function classes:mage/system/spellequip/minecart/summon
function classes:mage/system/spellequip/gui/main

#Clear Hotbar (must come last out of this section, otherwise the arguments will evaluate to false)
function classes:mage/system/spellequip/logic/clear/hotbar
scoreboard players set @s cl.spell.equip.start 1
scoreboard players set @s cl.detect.book 0
