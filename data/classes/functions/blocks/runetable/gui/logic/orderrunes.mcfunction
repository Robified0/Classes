execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run data modify block ~ ~ ~ Items[{Slot:16b}] merge value {Slot:15b}
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run data modify block ~ ~ ~ Items[{Slot:15b}] merge value {Slot:14b}
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run data modify block ~ ~ ~ Items[{Slot:14b}] merge value {Slot:13b}
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run data modify block ~ ~ ~ Items[{Slot:13b}] merge value {Slot:12b}
