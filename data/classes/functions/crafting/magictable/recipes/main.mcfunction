## Split up for optimization. It will detect the primary essence in the inventory to start firing off a
## smaller set of set of recipe commands for that specific type of magic.

##Mage ------------------------

#Check for Fire Spells
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{Fire:1b}}] run function classes:crafting/magictable/check/mage/spells/fire

#Check for Water Spells
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{Water:1b}}] run function classes:crafting/magictable/check/mage/spells/water

#Check for Air Spells
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{Air:1b}}] run function classes:crafting/magictable/check/mage/spells/air

#Check for Earth Spells
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{Earth:1b}}] run function classes:crafting/magictable/check/mage/spells/earth

#Check for Magic Spells
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{Magic:1b}}] run function classes:crafting/magictable/check/mage/spells/magic

## Healer ------------------------

#Check for Healer Spells
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{Holy:1b}}] run function classes:crafting/magictable/check/healer/spells/main


## Items ------------------------

#Check for Wands
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:amethyst_shard"}] run function classes:crafting/magictable/check/items/wands
