execute store result block ~ ~ ~ Items[{Slot:10b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:10b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:12b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:14b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:14b}].Count 0.9999999999

execute if data entity @s data.CraftSound.Anvil run playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1
execute if data entity @s data.CraftSound.Brew run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1
data remove entity @s data.CraftSound
