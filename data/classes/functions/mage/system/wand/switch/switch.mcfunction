#Set score from staff
execute store result score @s cl.wand.slot1 run data get entity @s SelectedItem.tag.slot.[0].tag."cl.spellNumber"
execute store result score @s cl.wand.slot2 run data get entity @s SelectedItem.tag.slot.[1].tag."cl.spellNumber"
execute store result score @s cl.wand.slot3 run data get entity @s SelectedItem.tag.slot.[2].tag."cl.spellNumber"
execute store result score @s cl.wand.slot4 run data get entity @s SelectedItem.tag.slot.[3].tag."cl.spellNumber"
execute store result score @s cl.wand.slot5 run data get entity @s SelectedItem.tag.slot.[4].tag."cl.spellNumber"

execute if entity @s[scores={cl.slot.selected=1..5}] run scoreboard players add @s cl.slot.selected 1
function classes:mage/system/wand/switch/emptyslot
execute if entity @s[scores={cl.slot.selected=6}] run scoreboard players set @s cl.slot.selected 1
execute if entity @s[scores={cl.slot.selected=1}] run function classes:mage/system/wand/switch/slot1
execute if entity @s[scores={cl.slot.selected=2}] run function classes:mage/system/wand/switch/slot2
execute if entity @s[scores={cl.slot.selected=3}] run function classes:mage/system/wand/switch/slot3
execute if entity @s[scores={cl.slot.selected=4}] run function classes:mage/system/wand/switch/slot4
execute if entity @s[scores={cl.slot.selected=5}] run function classes:mage/system/wand/switch/slot5
execute unless entity @s[scores={cl.slot.selected=1..5}] run scoreboard players set @s cl.slot.selected 1



#Set Spell Accordingly
execute if score @s cl.slot.selected matches 1 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot1
execute if score @s cl.slot.selected matches 2 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot2
execute if score @s cl.slot.selected matches 3 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot3
execute if score @s cl.slot.selected matches 4 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot4
execute if score @s cl.slot.selected matches 5 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot5
