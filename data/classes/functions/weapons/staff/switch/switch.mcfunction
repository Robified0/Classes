execute if entity @s[scores={cl.slot.selected=1..5}] run scoreboard players add @s cl.slot.selected 1
function classes:weapons/staff/switch/emptyslot
execute if entity @s[scores={cl.slot.selected=6}] run scoreboard players set @s cl.slot.selected 1
execute if entity @s[scores={cl.slot.selected=1}] run function classes:weapons/staff/switch/slot1
execute if entity @s[scores={cl.slot.selected=2}] run function classes:weapons/staff/switch/slot2
execute if entity @s[scores={cl.slot.selected=3}] run function classes:weapons/staff/switch/slot3
execute if entity @s[scores={cl.slot.selected=4}] run function classes:weapons/staff/switch/slot4
execute if entity @s[scores={cl.slot.selected=5}] run function classes:weapons/staff/switch/slot5
execute unless entity @s[scores={cl.slot.selected=1..5}] run scoreboard players set @s cl.slot.selected 1

#Set Spell Accordingly
execute if score @s cl.slot.selected matches 1 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot1
execute if score @s cl.slot.selected matches 2 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot2
execute if score @s cl.slot.selected matches 3 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot3
execute if score @s cl.slot.selected matches 4 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot4
execute if score @s cl.slot.selected matches 5 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot5
