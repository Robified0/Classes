data modify storage classes:runetable Items set from block ~ ~ ~ Items
data modify storage classes:runetable KeepItems set value []

#Save the wand slot
data modify storage classes:runetable KeepItems append from storage classes:runetable Items[{Slot:10b}]
data remove storage classes:runetable Items[{Slot:10b}]

#Save the rune slots, depending on how many the equipment has.
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isRune:1b}}]} run function classes:blocks/runetable/gui/logic/itemcheck/slot/1
execute if score @s cl.RuneTable.Slots matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{cl.isRune:1b}}]} run function classes:blocks/runetable/gui/logic/itemcheck/slot/2
execute if score @s cl.RuneTable.Slots matches 3.. if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{cl.isRune:1b}}]} run function classes:blocks/runetable/gui/logic/itemcheck/slot/3
execute if score @s cl.RuneTable.Slots matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{cl.isRune:1b}}]} run function classes:blocks/runetable/gui/logic/itemcheck/slot/4
execute if score @s cl.RuneTable.Slots matches 5.. if block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{cl.isRune:1b}}]} run function classes:blocks/runetable/gui/logic/itemcheck/slot/5

#Make sure the gui items are saved.
data modify storage classes:runetable KeepItems append from storage classes:runetable Items[{tag:{cl.gui:1b}}]
data remove storage classes:runetable Items[{tag:{cl.gui:1b}}]

#Modify the shulker_box
data modify block 0 -64 0 Items set from storage classes:runetable Items

#Give the loot back to the player closest to the marker
loot give @p mine 0 -64 0 minecraft:air{drop_contents:1b}

#Set the Rune Table back with the items it should have
data modify block ~ ~ ~ Items set from storage classes:runetable KeepItems
