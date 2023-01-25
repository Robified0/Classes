#Set score from staff
execute if entity @s[scores={cl.slot.selected=1..5}] run scoreboard players add @s cl.slot.selected 1
function classes:weapons/staff/switch/emptyslot
execute if entity @s[scores={cl.slot.selected=6}] run scoreboard players set @s cl.slot.selected 1

#Set Spell Accordingly
execute if score @s cl.slot.selected matches 1 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag."cl.slot1"[0]
execute if score @s cl.slot.selected matches 2 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag."cl.slot2"[0]
execute if score @s cl.slot.selected matches 3 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag."cl.slot3"[0]
execute if score @s cl.slot.selected matches 4 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag."cl.slot4"[0]
execute if score @s cl.slot.selected matches 5 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag."cl.slot5"[0]


execute unless score @s cl.spell.selected matches 1.. run scoreboard players set @s cl.slot.selected 1
execute unless score @s cl.spell.selected matches 1.. store result score @s cl.spell.selected run data get entity @s SelectedItem.tag."cl.slot1"[0]
execute unless score @s cl.spell.selected matches 1.. if score @s cl.slot.selected matches 1 store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[0].tag."cl.spellNumber"
execute if entity @s[scores={cl.slot.selected=1..5}] run function classes:weapons/staff/switch/changespell
