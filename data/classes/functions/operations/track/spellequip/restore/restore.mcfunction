scoreboard players reset @s cl.spell.equip.start
clear @s

execute positioned ~ -70 ~ run function classes:operations/track/spellequip/restore/restoreinventory
execute positioned ~ -70 ~ run kill @e[type=minecraft:chest_minecart,sort=nearest,limit=1,tag=cl.minecart.inventory]

execute positioned ~ -71 ~ run function classes:operations/track/spellequip/restore/restorehotbar
execute positioned ~ -71 ~ run kill @e[type=minecraft:chest_minecart,sort=nearest,limit=1,tag=cl.minecart.hotbar]
