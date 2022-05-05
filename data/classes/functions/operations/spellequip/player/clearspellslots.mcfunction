#Clear spell slots if a spell doesn't currently exist in that slot.

execute if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{cl.s.Spell:1b}}]}] run item replace entity @s hotbar.0 with minecraft:air
execute if entity @s[nbt=!{Inventory:[{Slot:1b,tag:{cl.s.Spell:1b}}]}] run item replace entity @s hotbar.1 with minecraft:air
execute if entity @s[nbt=!{Inventory:[{Slot:2b,tag:{cl.s.Spell:1b}}]}] run item replace entity @s hotbar.2 with minecraft:air
execute if entity @s[nbt=!{Inventory:[{Slot:3b,tag:{cl.s.Spell:1b}}]}] run item replace entity @s hotbar.3 with minecraft:air
execute if entity @s[nbt=!{Inventory:[{Slot:4b,tag:{cl.s.Spell:1b}}]}] run item replace entity @s hotbar.4 with minecraft:air
