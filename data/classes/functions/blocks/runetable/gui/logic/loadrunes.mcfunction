#Read how many slots are on the wand
execute store result score @s cl.RuneTable.Slots run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.RuneSlots"

#Set GUI based on how many slots there are.
execute if score @s cl.RuneTable.Slots matches 1 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:11,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 2 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:12,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 3 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:13,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 4 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:14,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 5 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:15,cl.gui:1b}

#Handle setting all the slots
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run function classes:blocks/runetable/gui/logic/loadrunes/staff/main

#Remove data from equipment
data remove block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore
data remove block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot1"
data remove block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot2"
data remove block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot3"
data remove block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot4"
data remove block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot5"

#Set button to "Equip Runes"
item replace block ~ ~ ~ container.19 with barrier{display:{Name:'{"translate":"block.classes.runetable.equip","color":"green"}',Lore:['{"translate":"block.classes.runetable.equip.desc","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:5,cl.gui:1b,cl.guiRuneEquip:1b} 1

#Set LastStaffNumber
execute store result score @s cl.RuneTable.LastStaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.StaffNumber"
