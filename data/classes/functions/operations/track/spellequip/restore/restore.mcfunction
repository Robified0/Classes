# Restore items now
execute positioned ~ ~ ~ run function classes:operations/track/spellequip/restore/restoreinventory
execute positioned ~ ~ ~ run kill @e[type=minecraft:chest_minecart,sort=nearest,tag=cl.minecart.inventory,limit=1]
execute positioned ~ ~-1 ~ run function classes:operations/track/spellequip/restore/restorehotbar
execute positioned ~ ~-1 ~ run kill @e[type=minecraft:chest_minecart,sort=nearest,tag=cl.minecart.hotbar,limit=1]

#Kill falling items
execute positioned ~ ~-1 ~ run kill @e[type=item,distance=..3]
