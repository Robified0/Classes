#Set score from staff
#execute store result score @s cl.wand.slot1 run data get entity @s SelectedItem.tag.slot.[0].tag."cl.spellNumber"
#execute store result score @s cl.wand.slot2 run data get entity @s SelectedItem.tag.slot.[1].tag."cl.spellNumber"
#execute store result score @s cl.wand.slot3 run data get entity @s SelectedItem.tag.slot.[2].tag."cl.spellNumber"
#execute store result score @s cl.wand.slot4 run data get entity @s SelectedItem.tag.slot.[3].tag."cl.spellNumber"
#execute store result score @s cl.wand.slot5 run data get entity @s SelectedItem.tag.slot.[4].tag."cl.spellNumber"


execute if entity @s[scores={cl.slot.selected=1..5}] run scoreboard players add @s cl.slot.selected 1
function classes:weapons/staff/switch/emptyslot
execute if entity @s[scores={cl.slot.selected=6}] run scoreboard players set @s cl.slot.selected 1

#Set Spell Accordingly
execute if score @s cl.slot.selected matches 1 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[0].tag."cl.spellNumber"
execute if score @s cl.slot.selected matches 2 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[1].tag."cl.spellNumber"
execute if score @s cl.slot.selected matches 3 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[2].tag."cl.spellNumber"
execute if score @s cl.slot.selected matches 4 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[3].tag."cl.spellNumber"
execute if score @s cl.slot.selected matches 5 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[4].tag."cl.spellNumber"

execute unless score @s cl.spell.selected matches 1.. run scoreboard players set @s cl.slot.selected 1
execute unless score @s cl.spell.selected matches 1.. if score @s cl.slot.selected matches 1 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[0].tag."cl.spellNumber"
execute if entity @s[scores={cl.slot.selected=1..5}] run function classes:weapons/staff/switch/changespell
execute unless entity @s[scores={cl.slot.selected=1..5}] run scoreboard players set @s cl.slot.selected 1






#execute if score @s cl.slot.selected matches 1 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot1
#execute if score @s cl.slot.selected matches 2 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot2
#execute if score @s cl.slot.selected matches 3 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot3
#execute if score @s cl.slot.selected matches 4 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot4
#execute if score @s cl.slot.selected matches 5 run scoreboard players operation @s cl.spell.selected = @s cl.wand.slot5
