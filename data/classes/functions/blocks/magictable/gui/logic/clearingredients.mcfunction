#Reduce the count of the items in the other slots by 1
execute store result block ~ ~ ~ Items[{Slot:10b}].count int 1 run data get block ~ ~ ~ Items[{Slot:10b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:12b}].count int 1 run data get block ~ ~ ~ Items[{Slot:12b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:14b}].count int 1 run data get block ~ ~ ~ Items[{Slot:14b}].Count 0.9999999999

#Play appropriate sound, based on what was flagged in the recipe.
execute if data entity @s data.CraftSound.Anvil run playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1
execute if data entity @s data.CraftSound.Brew run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1
execute if data entity @s data.CraftSound.BookDuplicate run playsound minecraft:ui.cartography_table.take_result block @a ~ ~ ~ 1 1
execute if data entity @s data.CraftSound.Magic run playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 10 1
data remove entity @s data.CraftSound

#Give advancements on craft
execute if data entity @s data.CraftItem.CraftStaff run advancement grant @p only minecraft:adventure/craftstaff
execute if data entity @s data.CraftItem.UpgradeStaff run advancement grant @p only minecraft:adventure/upgradestaff
data remove entity @s data.CraftItem
