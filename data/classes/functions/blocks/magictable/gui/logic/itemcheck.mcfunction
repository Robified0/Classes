data modify storage classes:magictable Items set from block ~ ~ ~ Items
data modify storage classes:magictable KeepItems set value []

#Save the wand slot and GUI overlay icons, always
data modify storage classes:magictable KeepItems append from storage classes:magictable Items[{Slot:10b}]
data remove storage classes:magictable Items[{Slot:10b}]
data modify storage classes:magictable KeepItems append from storage classes:magictable Items[{Slot:12b}]
data remove storage classes:magictable Items[{Slot:12b}]
data modify storage classes:magictable KeepItems append from storage classes:magictable Items[{Slot:14b}]
data remove storage classes:magictable Items[{Slot:14b}]
data modify storage classes:magictable KeepItems append from storage classes:magictable Items[{Slot:16b}]
data remove storage classes:magictable Items[{Slot:16b}]

#Make sure the gui items are saved.
data modify storage classes:magictable KeepItems append from storage classes:magictable Items[{tag:{cl.gui:1b}}]
data remove storage classes:magictable Items[{tag:{cl.gui:1b}}]

#Modify the shulker_box
data modify block -1 -64 0 Items set from storage classes:magictable Items

#Give the loot back to the player closest to the marker
loot give @p mine -1 -64 0 minecraft:stick{drop_contents:1b}

#Set the Rune Table back with the items it should have
data modify block ~ ~ ~ Items set from storage classes:magictable KeepItems
