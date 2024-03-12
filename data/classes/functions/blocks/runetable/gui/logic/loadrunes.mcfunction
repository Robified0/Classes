say loadrunes.mcfunction

execute if score @s cl.RuneTable.Slots matches 1 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=11,minecraft:custom_data={cl.gui:1b}]
execute if score @s cl.RuneTable.Slots matches 2 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=12,minecraft:custom_data={cl.gui:1b}]
execute if score @s cl.RuneTable.Slots matches 3 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=13,minecraft:custom_data={cl.gui:1b}]
execute if score @s cl.RuneTable.Slots matches 4 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=14,minecraft:custom_data={cl.gui:1b}]
execute if score @s cl.RuneTable.Slots matches 5 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=15,minecraft:custom_data={cl.gui:1b}]


#Read how many slots are on the wand
execute store result score @s cl.RuneTable.Slots run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.RuneSlots"

#Handle setting all the slots
execute if items block ~ ~ ~ container.10 barrel{cl.HasNumber:1b} run function classes:blocks/runetable/gui/logic/loadrunes/staff/main

#Remove data from equipment
data remove block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"
data remove block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot1"
data remove block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot2"
data remove block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot3"
data remove block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot4"
data remove block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot5"

#Set button to "Equip Runes"
item replace block ~ ~ ~ container.19 with minecraft:barrier[minecraft:custom_name="{translate:block.classes.runetable.equip,color:green}",minecraft:lore=['{translate:block.classes.runetable.equip.desc, color:dark_aqua, italic:true}'],minecraft:custom_model_data=5,minecraft:custom_data={cl.gui:1b,cl.guiRemove:1b}]

#Set LastStaffNumber
execute store result score @s cl.RuneTable.LastStaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.RuneSlots"
