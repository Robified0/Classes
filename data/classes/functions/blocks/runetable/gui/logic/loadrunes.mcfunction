execute store result score @s cl.RuneTable.Slots run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.RuneSlots"

execute if score @s cl.RuneTable.Slots matches 1 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:11,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 2 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:12,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 3 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:13,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 4 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:14,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 5 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:15,cl.gui:1b}

data modify block ~ ~ ~ Items[{Slot:12b}] merge from block ~ ~ ~ Items[{Slot:10b}].tag.slot[0]
data modify block ~ ~ ~ Items[{Slot:13b}] merge from block ~ ~ ~ Items[{Slot:10b}].tag.slot[1]
data modify block ~ ~ ~ Items[{Slot:14b}] merge from block ~ ~ ~ Items[{Slot:10b}].tag.slot[2]
data modify block ~ ~ ~ Items[{Slot:15b}] merge from block ~ ~ ~ Items[{Slot:10b}].tag.slot[3]
data modify block ~ ~ ~ Items[{Slot:16b}] merge from block ~ ~ ~ Items[{Slot:10b}].tag.slot[4]

data remove block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore
data remove block ~ ~ ~ Items[{Slot:10b}].tag.slot

item replace block ~ ~ ~ container.19 with barrier{display:{Name:'{"text":"Equip Runes","color":"green"}',Lore:['{"text":"Equip Runes to Staff.","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:5,cl.gui:1b,cl.guiRuneEquip:1b} 1

execute store result score @s cl.RuneTable.LastStaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.StaffNumber"
