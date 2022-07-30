scoreboard players reset @s cl.spell.equip.start
clear @s

execute in overworld run function classes:operations/track/spellequip/shulkers/retrieve/main
scoreboard players reset @s cl.track.shulkerStorage
