# Silence the barrel sounds
execute as @a[distance=..10] run stopsound @s block minecraft:block.barrel.open

#Get Staff Numbers. Reset if staff numbers aren't equal
execute store result score @s cl.RuneTable.StaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.EquipmentNumber"
execute if score @s cl.RuneTable.LastStaffNumber matches 0 run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.EquipmentNumber"
execute unless score @s cl.RuneTable.StaffNumber = @s cl.RuneTable.LastStaffNumber run function classes:blocks/runetable/gui/logic/itemcheck/returnrunes

#Run item check
function classes:blocks/runetable/gui/logic/itemcheck/main


##### Example command for porting ###########
#execute unless items block ~ ~ ~ container.19 barrel[minecraft:custom_data={cl.guiRuneEquip:1b}] if items block ~ ~ ~ container.10 barrel[minecraft:custom_data={cl.HasNumber:1b}]
#execute if items block -149 80 112 container.19 barrier{cl.gui:1b}
#Reset Rune slot GUI if no wand is present.
execute store result score @s cl.RuneTable.Slots run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.RuneSlots"
execute unless items block ~ ~ ~ container.10 #classes:runeequipment run scoreboard players set @s cl.RuneTable.Slots 0
execute unless score @s cl.RuneTable.Slots matches 1.. run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=10,minecraft:custom_data={cl.gui:1b}]

# Readd the magnifying glass when there is no item in Slot 10

# New player.cursor
execute if score @s cl.RuneTable.Slots matches 1.. if items entity @p player.cursor barrier{cl.guiRemove:1b} run function classes:blocks/runetable/gui/logic/loadrunes
execute if score @s cl.RuneTable.Slots matches 1.. if items entity @p player.cursor barrier{cl.guiRuneEquip:1b} run function classes:blocks/runetable/gui/logic/equiprunes
#execute unless score @s cl.RuneTable.Slots matches 1.. unless items block ~ ~ ~ container.19 barrier{cl.guiRemove:1b} if items block ~ ~ ~ container.10 #classes:runeequipment{cl.HasNumber:1b} run function classes:blocks/runetable/gui/logic/loadrunes
#execute unless score @s cl.RuneTable.Slots matches 1.. unless items block ~ ~ ~ container.10 barrier{cl.HasNumber:1b} unless items block ~ ~ ~ container.19 barrier{cl.guiRemove:1b} run item replace block ~ ~ ~ container.19 with minecraft:barrier[minecraft:custom_name="{translate:block.classes.runetable.inspect,color:green}",minecraft:lore=['{translate:block.classes.runetable.inspect.desc, color:dark_aqua, italic:true}'],minecraft:custom_model_data=4,minecraft:custom_data={cl.gui:1b,cl.guiRemove:1b}]

#execute if score @s cl.RuneTable.Slots matches 1.. unless items block ~ ~ ~ container.19 barrier{cl.guiRuneEquip:1b} if items block ~ ~ ~ container.10 barrier{cl.HasNumber:1b} run function classes:blocks/runetable/gui/logic/equiprunes
#execute if score @s cl.RuneTable.Slots matches 1.. unless items block ~ ~ ~ container.19 barrier{cl.guiRuneEquip:1b} if items block ~ ~ ~ container.10 barrier{cl.HasNumber:1b} run item replace block ~ ~ ~ container.19 with minecraft:barrier[minecraft:custom_name="{translate:block.classes.runetable.equip,color:green}",minecraft:lore=['{translate:block.classes.runetable.equip.desc,color:dark_aqua,italic:true}'],minecraft:custom_model_data=5,minecraft:custom_data={cl.gui:1b,cl.guiRuneEquip:1b}]

clear @a barrier{cl.gui:1b}

execute if block ~ ~ ~ barrel{Items:[{Slot:10b}]} store success block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.inRuneTable" byte 1 run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.HasNumber"
execute store result score @s cl.RuneTable.LastStaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.EquipmentNumber"
