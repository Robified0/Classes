# Summon the item
say running 2slot
execute store result score @s cl.track.SlotNumber run data get block ~ ~ ~ Items.[{tag:{cl.isStaff:1b}}].tag."cl.RuneSlots"
scoreboard players add @s cl.track.SlotNumber 1

execute store result score @s cl.track.CustomModelData run data get block ~ ~ ~ Items.[{tag:{cl.isStaff:1b}}].tag.CustomModelData
scoreboard players add @s cl.track.CustomModelData 1

execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.isStaff:1b}}]} run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.10
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isStaff:1b}}]} run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.12
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{cl.isStaff:1b}}]} run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.14

execute store result block ~ ~ ~ Items.[{Slot:16b}].tag."cl.RuneSlots" int 1 run scoreboard players get @s cl.track.SlotNumber
execute store result block ~ ~ ~ Items.[{Slot:16b}].tag.CustomModelData int 1 run scoreboard players get @s cl.track.CustomModelData

scoreboard players reset @s cl.track.CustomModelData
scoreboard players reset @s cl.track.SlotNumber

#Run sound file
function classes:blocks/magictable/gui/logic/sounds/anviluse
