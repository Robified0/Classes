#Run appropriate tracking (root/main)
function classes:operations/track/spellequip/interact

execute if score @s cl.track.interact matches 1.. run function classes:operations/track/spellequip/shulkers/restore
execute if score @s cl.track.interact matches 1.. run scoreboard players reset @s cl.spell.equip.start
execute if score @s cl.track.interact matches 1.. run scoreboard players reset @s cl.track.interact
