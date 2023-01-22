execute if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isRune:1b}}]} run playsound minecraft:entity.elder_guardian.curse block @a ~ ~ ~ 0.5 2

execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run function classes:blocks/runetable/gui/logic/equipment/staff

execute if block ~ ~ ~ barrel{Items:[{Slot:12b,Count:1b,tag:{cl.isRune:1b}}]} run item replace block ~ ~ ~ container.12 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,Count:1b,tag:{cl.isRune:1b}}]} run item replace block ~ ~ ~ container.13 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,Count:1b,tag:{cl.isRune:1b}}]} run item replace block ~ ~ ~ container.14 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,Count:1b,tag:{cl.isRune:1b}}]} run item replace block ~ ~ ~ container.15 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:16b,Count:1b,tag:{cl.isRune:1b}}]} run item replace block ~ ~ ~ container.16 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,Count:1b,tag:{cl.isRune:1b}}]} run item replace block ~ ~ ~ container.17 with minecraft:air

scoreboard players reset @s cl.RuneTable.Slots

item replace block ~ ~ ~ container.19 with barrier{display:{Name:'{"text":"Inspect Staff","color":"green"}',Lore:['{"text":"Inspect Staff, and view available slots and equipped runes.","color":"dark_aqua","italic":true}']},HideFlags:127,CustomModelData:4,cl.gui:1b,cl.guiRemove:1b} 1

item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:10,cl.gui:1b}
scoreboard players reset @s cl.RuneTable.LastStaffNumber
