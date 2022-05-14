## Split up for optimization. It will detect the primary essence in the inventory to start firing off a
## smaller set of set of recipe commands for that specific type of magic.

## Handle research books
execute if data block ~ ~ ~ Items[{id:"minecraft:writable_book"}] at @s if entity @p[scores={cl.Class=3}] run function classes:blocks/magictable/research/mage/main
execute if data block ~ ~ ~ Items[{id:"minecraft:writable_book"}] at @s if entity @p[scores={cl.Class=4}] run function classes:blocks/magictable/research/healer/main

## Items ------------------------

#Check for Wands
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[{id:"minecraft:stick"}] run function classes:blocks/magictable/check/items/wands
