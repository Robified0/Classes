data merge storage classes:equipment_number {hasNumber:1}
execute store result storage classes:equipment_number value int 1 run scoreboard players get $cl.tracker cl.RuneTable.StaffNumber
#item modify entity @s player.cursor classes:items/equipment_number
item modify entity @s weapon.mainhand classes:items/equipment_number


#execute if items block store result block ~ ~ ~ Items.[{Slot:16b}].tag."cl.StaffNumber" int 1 run scoreboard players get $cl.tracker cl.RuneTable.StaffNumber

# Finally, increase the score for the next run
scoreboard players add $cl.tracker cl.RuneTable.StaffNumber 1
