#Equip runes if there are any
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} run function classes:blocks/runetable/gui/logic/equiprunes

#Grab all items
data modify storage classes:runetable Items set from block ~ ~ ~ Items

#Remove anything used for the GUI
data remove storage classes:runetable Items[{components:{"minecraft:custom_data":{cl.gui:1b}}}]

#Modify the shulker_box
data modify block 0 -64 0 Items set from storage classes:runetable Items

#Give the loot back to the player closest to the marker
loot give @p mine 0 -64 0 minecraft:stick{drop_contents:1b}

item replace block ~ ~ ~ container.10 with minecraft:air
item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=10,minecraft:custom_data={cl.gui:1b}]
