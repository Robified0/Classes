execute store result score @s cl.track.currentHotBarSlot run data get entity @s SelectedItemSlot
execute unless score @s cl.track.currentHotBarSlot = @s cl.track.lastHotBarSlot store result score @s cl.spell.selected run data get entity @s SelectedItem.tag.slot.[0].tag."cl.spellNumber"
execute unless score @s cl.track.currentHotBarSlot = @s cl.track.lastHotBarSlot store result score @s cl.spell.selected run scoreboard players set @s cl.slot.selected 6
execute unless score @s cl.track.currentHotBarSlot = @s cl.track.lastHotBarSlot if score @s cl.spell.selected matches 1.. run function classes:weapons/staff/switch/switch
scoreboard players operation @s cl.track.lastHotBarSlot = @s cl.track.currentHotBarSlot
