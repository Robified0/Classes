#Run appropriate tracking (root/main)
execute if score @s cl.spell.equip.start matches 1.. run function classes:mage/system/spellequip/logic/track/interact

execute if score @s cl.track.interact matches 1.. run function classes:mage/system/spellequip/logic/restore/restore
execute if score @s cl.track.interact matches 1.. run scoreboard players reset @s cl.spell.equip.start
execute if score @s cl.track.interact matches 1.. run scoreboard players reset @s cl.track.interact
function classes:mage/system/spellequip/logic/track/reset
