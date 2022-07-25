## Split up for optimization.

## Items ------------------------

#Check for Wands
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:stick"}] run function classes:blocks/magictable/check/items/wands
