data remove storage classes:runetable KeepItems[{Slot:10b}]
data modify storage classes:runetable Items set from block ~ ~ ~ Items

#Modify the shulker_box
data modify block 0 -64 0 Items set from storage classes:runetable Items

#Give the loot back to the player closest to the marker
loot give @p mine 0 -64 0 minecraft:air{drop_contents:1b}

#Set the Rune Table back with the items it should have
data modify block ~ ~ ~ Items set from storage classes:runetable KeepItems
