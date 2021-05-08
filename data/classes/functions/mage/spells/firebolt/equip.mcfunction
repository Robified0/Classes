#Copy current slot # to spell scoreboard.
scoreboard players operation @s spellFirebolt = @s loadSpell

#Run function to increase current slot # to prepare for next spell equip
execute as @s run function classes:operations/increasescore
