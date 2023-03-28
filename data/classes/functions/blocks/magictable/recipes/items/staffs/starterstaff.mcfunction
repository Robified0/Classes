# Summon the item
loot replace block ~ ~ ~ container.16 loot classes:items/staffs/starterstaff

#Give staff a number - for properly detecting wand switches in Rune Table
execute store result block ~ ~ ~ Items.[{Slot:16b}].tag."cl.StaffNumber" int 1 run scoreboard players get $cl.tracker cl.RuneTable.StaffNumber
scoreboard players add $cl.tracker cl.RuneTable.StaffNumber 1

#Run sound file
function classes:blocks/magictable/gui/logic/sounds/anviluse

#Run advancement file
function classes:blocks/magictable/gui/logic/advancements/craftstaff
