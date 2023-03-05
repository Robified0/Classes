#Reduce the count of the items in the other slots by 1
execute store result block ~ ~ ~ Items[{Slot:10b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:10b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:12b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:14b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:14b}].Count 0.9999999999
execute store result score @s cl.track.Rune.Count run data get block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{cl.isSoul:1b}}].Count
scoreboard players remove @s cl.track.Rune.Count 4
item modify block ~ ~ ~ container.10 classes:items/runes/subtractcount

#Play appropriate sound, based on what was flagged in the recipe.
execute if data entity @s data.CraftSound.Anvil run playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1
execute if data entity @s data.CraftSound.Brew run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1
execute if data entity @s data.CraftSound.BookDuplicate run playsound minecraft:ui.cartography_table.take_result block @a ~ ~ ~ 1 1
execute if data entity @s data.CraftSound.Magic run playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 10 1
data remove entity @s data.CraftSound
