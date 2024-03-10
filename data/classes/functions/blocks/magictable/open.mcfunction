

# Handle Recipes
execute if score @s cl.MagicTable.Ingredients matches 4 unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function classes:blocks/magictable/gui/logic/clearingredients
execute if score @s cl.MagicTable.Ingredients matches 4 unless block ~ ~ ~ barrel{Items:[{Slot:10b},{Slot:12b},{Slot:14b}]} run item replace block ~ ~ ~ container.16 with minecraft:air
#Handled in (main/delay/20). Small delay for performance gains.
scoreboard players set @s cl.MagicTable.Ingredients 0
execute if block ~ ~ ~ barrel{Items:[{Slot:10b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} run scoreboard players add @s cl.MagicTable.Ingredients 1


execute unless block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{cl.guiRemove:1b}}]} run item replace block ~ ~ ~ container.16 with minecraft:air
execute unless block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{cl.guiRemove:1b}}]} run scoreboard players remove @s cl.EnchantNumber 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{cl.guiRemove:1b}}]} run item replace block ~ ~ ~ container.16 with minecraft:air
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{cl.guiRemove:1b}}]} run scoreboard players add @s cl.EnchantNumber 1


execute unless block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{cl.guiRemove:1b}}]} run item replace block ~ ~ ~ container.7 with barrier{display:{Name:'{"translate":"block.classes.runetable.inspect","color":"green"}',Lore:['{"translate":"block.classes.runetable.inspect.desc","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:4,cl.gui:1b,cl.guiRemove:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{cl.guiRemove:1b}}]} run item replace block ~ ~ ~ container.25 with barrier{display:{Name:'{"translate":"block.classes.runetable.inspect","color":"green"}',Lore:['{"translate":"block.classes.runetable.inspect.desc","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:4,cl.gui:1b,cl.guiRemove:1b} 1


#Check Recipes
execute if score @s cl.MagicTable.Ingredients matches 3 unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run item replace block ~ ~ ~ container.16 with minecraft:air

function classes:blocks/magictable/gui/logic/itemcheck


#Handle logic for Magic table.
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function classes:blocks/magictable/recipes/main

execute unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run scoreboard players reset @s cl.EnchantNumber

#Clear items from player inventory
clear @a barrier{cl.gui:1b}
