# Silence the barrel sounds
execute as @a[distance=..10] run stopsound @s block minecraft:block.barrel.open

#Get Staff Numbers. Reset if staff numbers aren't equal
execute store result score @s cl.RuneTable.StaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.StaffNumber"
execute if score @s cl.RuneTable.LastStaffNumber matches 0 run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.StaffNumber"
execute unless score @s cl.RuneTable.StaffNumber = @s cl.RuneTable.LastStaffNumber run function classes:blocks/runetable/gui/logic/itemcheck/returnrunes

#Run item check
function classes:blocks/runetable/gui/logic/itemcheck/main


#Reset Rune slot GUI if no wand is present.
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run scoreboard players set @s cl.RuneTable.Slots 0
execute unless score @s cl.RuneTable.Slots matches 1.. run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:10,cl.gui:1b}

execute unless score @s cl.RuneTable.Slots matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:19b,tag:{cl.guiRemove:1b}}]} if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run function classes:blocks/runetable/gui/logic/loadrunes
execute unless score @s cl.RuneTable.Slots matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:19b,tag:{cl.guiRemove:1b}}]} run item replace block ~ ~ ~ container.19 with barrier{display:{Name:'{"translate":"block.classes.runetable.inspect","color":"green"}',Lore:['{"translate":"block.classes.runetable.inspect.desc","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:4,cl.gui:1b,cl.guiRemove:1b} 1

execute if score @s cl.RuneTable.Slots matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:19b,tag:{cl.guiRuneEquip:1b}}]} if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run function classes:blocks/runetable/gui/logic/equiprunes
execute if score @s cl.RuneTable.Slots matches 1.. unless block ~ ~ ~ barrel{Items:[{Slot:19b,tag:{cl.guiRuneEquip:1b}}]} if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run item replace block ~ ~ ~ container.19 with barrier{display:{Name:'{"translate":"block.classes.runetable.equip","color":"green"}',Lore:['{"translate":"block.classes.runetable.equip.desc","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:5,cl.gui:1b,cl.guiRuneEquip:1b} 1

execute if score @s cl.RuneTable.Slots matches 1 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:11,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 2 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:12,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 3 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:13,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 4 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:14,cl.gui:1b}
execute if score @s cl.RuneTable.Slots matches 5 run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:15,cl.gui:1b}


clear @a barrier{cl.gui:1b}

execute store success block ~ ~ ~ Items[{Slot:10b}].tag.inRuneTable byte 1 run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.isStaff"
execute store result score @s cl.RuneTable.LastStaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.StaffNumber"
