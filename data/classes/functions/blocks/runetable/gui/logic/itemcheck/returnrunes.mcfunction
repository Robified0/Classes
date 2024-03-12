data modify storage classes:runetable Items set from block ~ ~ ~ Items
data modify storage classes:runetable KeepItems set value []

#Save the wand slot and GUI overlay icons, always
data modify storage classes:runetable KeepItems append from storage classes:runetable Items[{Slot:10b}]
data remove storage classes:runetable Items[{Slot:10b}]
data modify storage classes:runetable KeepItems append from storage classes:runetable Items[{components:{"minecraft:custom_data":{cl.gui:1b}}}]
data remove storage classes:runetable Items[{components:{"minecraft:custom_data":{cl.gui:1b}}}]

item replace block ~ ~ ~ container.12 with minecraft:air
item replace block ~ ~ ~ container.13 with minecraft:air
item replace block ~ ~ ~ container.14 with minecraft:air
item replace block ~ ~ ~ container.15 with minecraft:air
item replace block ~ ~ ~ container.16 with minecraft:air

#Modify the shulker_box
data modify block 0 -64 0 Items set from storage classes:runetable Items

#Give the loot back to the player closest to the marker
loot give @p mine 0 -64 0 minecraft:stick{drop_contents:1b}

#Set the Rune Table back with the items it should have
data modify block ~ ~ ~ Items set from storage classes:runetable KeepItems

item replace block ~ ~ ~ container.19 with minecraft:barrier[minecraft:custom_name="{translate:block.classes.runetable.inspect,color:green}",minecraft:lore=['{translate:block.classes.runetable.inspect.desc, color:dark_aqua, italic:true}'],minecraft:custom_model_data=4,minecraft:custom_data={cl.gui:1b,cl.guiRemove:1b}]
