#Copy current slot # to spell scoreboard.
scoreboard players operation @s spellBunnyHop = @s loadSpell
execute if score @s spellBunnyHop matches 1 run function classes:operations/emptyslot/slot1
execute if score @s spellBunnyHop matches 2 run function classes:operations/emptyslot/slot2
execute if score @s spellBunnyHop matches 3 run function classes:operations/emptyslot/slot3
execute if score @s spellBunnyHop matches 4 run function classes:operations/emptyslot/slot4
execute if score @s spellBunnyHop matches 5 run function classes:operations/emptyslot/slot5

#Run function to increase current slot # to prepare for next spell equip
execute as @s run function classes:operations/increasescore