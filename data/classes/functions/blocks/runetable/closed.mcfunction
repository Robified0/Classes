#Equip runes if there are any
function classes:blocks/runetable/gui/logic/equiprunes

#Grab all items
data modify storage classes:runetable Items set from block ~ ~ ~ Items

#Remove anything used for the GUI
data remove storage classes:runetable Items[{tag:{cl.gui:1b}}]

#Modify the shulker_box
data modify block 0 -64 0 Items set from storage classes:runetable Items

#Give the loot back to the player closest to the marker
loot give @p mine 0 -64 0 minecraft:air{drop_contents:1b}

item replace block ~ ~ ~ container.10 with minecraft:air
#item replace block ~ ~ ~ container.12 with minecraft:air
#item replace block ~ ~ ~ container.13 with minecraft:air
#item replace block ~ ~ ~ container.14 with minecraft:air
#item replace block ~ ~ ~ container.15 with minecraft:air
#item replace block ~ ~ ~ container.16 with minecraft:air
item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:10,cl.gui:1b}
