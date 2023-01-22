# Handle Recipes
execute if score @s cl.MagicTable.Ingredients matches 4 unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function classes:blocks/magictable/gui/logic/clearingredients
execute if score @s cl.MagicTable.Ingredients matches 4 unless block ~ ~ ~ barrel{Items:[{Slot:10b},{Slot:12b},{Slot:14b}]} run item replace block ~ ~ ~ container.16 with minecraft:air
#Handled in (operations/delay/20). Small delay for performance gains.
scoreboard players set @s cl.MagicTable.Ingredients 0
execute if block ~ ~ ~ barrel{Items:[{Slot:10b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1

#Check Recipes
execute if score @s cl.MagicTable.Ingredients matches 3 unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run item replace block ~ ~ ~ container.16 with minecraft:air

function classes:blocks/magictable/gui/logic/itemcheck

#Handle logic for Magic table.
execute as @e[type=marker,tag=cl.magicTable] at @s unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function classes:blocks/magictable/recipes/main
