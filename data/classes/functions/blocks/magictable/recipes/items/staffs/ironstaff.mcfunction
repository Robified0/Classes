#Crafted the wand, give them the advancement
execute if score @p cl.Class matches 3 run advancement grant @p only classes:mage/wands/starter
execute if score @p cl.Class matches 4 run advancement grant @p only classes:healer/wands/starter

# Summon the item
loot replace block ~ ~ ~ container.16 loot classes:items/staffs/ironstaff/1slot

#Give staff a number - for properly detecting wand switches in Rune Table
execute store result block ~ ~ ~ Items.[{Slot:16b}].tag."cl.StaffNumber" int 1 run scoreboard players get $cl.tracker cl.RuneTable.StaffNumber
scoreboard players add $cl.tracker cl.RuneTable.StaffNumber 1

#Run sound file
function classes:blocks/magictable/gui/logic/sounds/anviluse
