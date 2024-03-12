data modify storage classes:runetable Items set from block ~ ~ ~ Items
data modify storage classes:runetable KeepItems set value []

#Save the wand slot
data modify storage classes:runetable KeepItems append from storage classes:runetable Items[{Slot:10b}]
data remove storage classes:runetable Items[{Slot:10b}]

#Save the rune slots, depending on how many the equipment has.
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,components:{"minecraft:custom_data":{cl.HasNumber:1b}}}]} run function classes:blocks/runetable/gui/logic/itemcheck/staff/main

#Make sure the gui items are saved.
data modify storage classes:runetable KeepItems append from storage classes:runetable Items[{components:{"minecraft:custom_data":{cl.gui:1b}}}]
data remove storage classes:runetable Items[{components:{"minecraft:custom_data":{cl.gui:1b}}}]

#Modify the shulker_box
data modify block 0 -64 0 Items set from storage classes:runetable Items

#Give the loot back to the player closest to the marker
loot give @p mine 0 -64 0 minecraft:stick{drop_contents:1b}

#Set the Rune Table back with the items it should have
data modify block ~ ~ ~ Items set from storage classes:runetable KeepItems
