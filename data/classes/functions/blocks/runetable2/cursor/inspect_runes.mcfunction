#Read how many slots are on the wand
execute store result score @s cl.RuneTable.Slots run data get block ~ ~ ~ Items[{Slot:10b}].tag."cl.RuneSlots"

#Set GUI based on how many slots there are.
execute if score @s cl.RuneTable.Slots matches 1 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{text:''}",minecraft:custom_model_data=11]
execute if score @s cl.RuneTable.Slots matches 2 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{text:''}",minecraft:custom_model_data=12]
execute if score @s cl.RuneTable.Slots matches 3 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{text:''}",minecraft:custom_model_data=13]
execute if score @s cl.RuneTable.Slots matches 4 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{text:''}",minecraft:custom_model_data=14]
execute if score @s cl.RuneTable.Slots matches 5 run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{text:''}",minecraft:custom_model_data=15]

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
item replace block ~ ~ ~ container.19 with minecraft:barrier[minecraft:custom_name="{translate:block.classes.runetable.equip, color:green}",minecraft:lore=['{translate: block.classes.runetable.equip.desc,color: dark_aqua, italic: true}'],minecraft:custom_model_data=5]

#Set LastStaffNumber
execute store result score @s cl.RuneTable.LastStaffNumber run data get block ~ ~ ~ Items[{Slot:10b}].components.custom_data."cl.StaffNumber"

# Clear inventory
execute as @p run function classes:blocks/runetable2/cursor/replace
