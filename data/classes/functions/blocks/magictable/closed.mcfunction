item replace block ~ ~ ~ container.16 with minecraft:air

data modify storage classes:magictable Items set from block ~ ~ ~ Items

#Remove anything used for the GUI
data remove storage classes:magictable Items[{tag:{cl.gui:1b}}]

#Modify the shulker_box
data modify block -1 -64 0 Items set from storage classes:magictable Items

#Give the loot back to the player closest to the marker
loot give @p mine -1 -64 0 minecraft:air{drop_contents:1b}

item replace block ~ ~ ~ container.10 with minecraft:air
item replace block ~ ~ ~ container.12 with minecraft:air
item replace block ~ ~ ~ container.14 with minecraft:air

data remove entity @s data.CraftSound

scoreboard players reset @s cl.track.Rune.Count
scoreboard players reset @s cl.EnchantNumber
