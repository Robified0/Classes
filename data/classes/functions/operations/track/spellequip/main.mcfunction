#Run appropriate tracking (operations/delay/10/main)
execute if score @s cl.spell.equip.start matches 1.. run function classes:operations/track/spellequip/interact

execute if score @s[predicate=classes:checkclass/spellcaster] cl.track.interact matches 1.. run function classes:operations/track/spellequip/restore/restore
execute if score @s cl.track.interact matches 1.. run scoreboard players reset @s cl.spell.equip.start
execute if score @s cl.track.interact matches 1.. run scoreboard players reset @s cl.track.interact
function classes:operations/track/spellequip/reset
