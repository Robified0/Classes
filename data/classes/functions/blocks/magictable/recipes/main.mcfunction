## Split up for optimization.

## Items ------------------------

#Check for Sticks
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:stick"}] run function classes:blocks/magictable/check/items/wands

#Check for Glass Bottle
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:glass_bottle"}] run function classes:blocks/magictable/check/items/potions
