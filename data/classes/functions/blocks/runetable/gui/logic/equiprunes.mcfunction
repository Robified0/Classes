#Order runes
function classes:blocks/runetable/gui/logic/orderrunes

#Play Sound Effect
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isRune:1b}}]} run playsound minecraft:entity.elder_guardian.curse block @a ~ ~ ~ 0.5 2

#Put lore and tag info onto Staff.
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run function classes:blocks/runetable/gui/logic/equipment/staff

#Reduce count of runes by 1 (one has gone onto the staff). Rest will be returned by GUI reset.
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:12b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:13b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:13b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:14b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:14b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:15b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:15b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:16b}].Count 0.9999999999

#Reset the score, to reset the GUI.
scoreboard players reset @s cl.RuneTable.Slots

#Put icon back to inspect staff.
item replace block ~ ~ ~ container.19 with barrier{display:{Name:'{"text":"Inspect Staff","color":"green"}',Lore:['{"text":"Inspect Staff, and view available slots and equipped runes.","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:4,cl.gui:1b,cl.guiRemove:1b} 1

#Replace GUI icon
item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:10,cl.gui:1b}

#Reset the LastStaffNumber score
scoreboard players reset @s cl.RuneTable.LastStaffNumber
