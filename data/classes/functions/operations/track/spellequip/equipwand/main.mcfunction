
#Do hotbar 0-4 and throw them in Wand slots.
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{cl.s.Spell:1b}}]}] run function classes:operations/track/spellequip/equipwand/slot1
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{cl.s.Spell:1b}}]}] run function classes:operations/track/spellequip/equipwand/slot2
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{cl.s.Spell:1b}}]}] run function classes:operations/track/spellequip/equipwand/slot3
execute if entity @s[nbt={Inventory:[{Slot:3b,tag:{cl.s.Spell:1b}}]}] run function classes:operations/track/spellequip/equipwand/slot4
execute if entity @s[nbt={Inventory:[{Slot:4b,tag:{cl.s.Spell:1b}}]}] run function classes:operations/track/spellequip/equipwand/slot5

execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{cl.s.Spell:1b}}]}] run scoreboard players reset @s cl.wand.slot1
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{cl.s.Spell:1b}}]}] run scoreboard players reset @s cl.wand.slot2
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{cl.s.Spell:1b}}]}] run scoreboard players reset @s cl.wand.slot3
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{cl.s.Spell:1b}}]}] run scoreboard players reset @s cl.wand.slot4
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{cl.s.Spell:1b}}]}] run scoreboard players reset @s cl.wand.slot5

function classes:operations/track/spellequip/shulkers/restore

scoreboard players set @s cl.slot.selected 5
execute if score @s cl.Class matches 3 run function classes:mage/system/wand/switch/switch
execute if score @s cl.Class matches 4 run function classes:healer/system/wand/switch/switch
