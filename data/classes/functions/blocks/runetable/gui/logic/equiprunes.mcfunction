say equiprunes.mcfunction
#Order runes
function classes:blocks/runetable/gui/logic/orderrunes


#Play Sound Effect
execute if items block ~ ~ ~ container.12 structure_block{cl.Rune:1b} run playsound minecraft:entity.elder_guardian.curse block @a ~ ~ ~ 0.5 2

#Put lore and tag info onto Staff.
execute if items block ~ ~ ~ container.10 warped_fungus_on_a_stick{cl.HasNumber:1b} run function classes:blocks/runetable/gui/logic/equipment/staff

#Reduce count of runes by 1 (one has gone onto the staff). Rest will be returned by GUI reset.
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} store result block ~ ~ ~ Items[{Slot:12b}].count int 1 run data get block ~ ~ ~ Items[{Slot:12b}].count 0.9999999999
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} store result block ~ ~ ~ Items[{Slot:13b}].count int 1 run data get block ~ ~ ~ Items[{Slot:13b}].count 0.9999999999
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} store result block ~ ~ ~ Items[{Slot:14b}].count int 1 run data get block ~ ~ ~ Items[{Slot:14b}].count 0.9999999999
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} store result block ~ ~ ~ Items[{Slot:15b}].count int 1 run data get block ~ ~ ~ Items[{Slot:15b}].count 0.9999999999
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run data get block ~ ~ ~ Items[{Slot:16b}].count 0.9999999999

#Reset the score, to reset the GUI.
scoreboard players reset @s cl.RuneTable.Slots

#Put icon back to inspect staff.
item replace block ~ ~ ~ container.19 with minecraft:barrier[minecraft:custom_name="{translate:block.classes.runetable.inspect,color:green}",minecraft:lore=['{translate:block.classes.runetable.inspect.desc, color:dark_aqua, italic:true}'],minecraft:custom_model_data=4,minecraft:custom_data={cl.gui:1b,cl.guiRemove:1b}]

#Replace GUI icon
item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_name="{\"text\":\" \"}",minecraft:custom_model_data=10,minecraft:custom_data={cl.gui:1b}]

#Reset the LastStaffNumber score
scoreboard players reset @s cl.RuneTable.LastStaffNumber
