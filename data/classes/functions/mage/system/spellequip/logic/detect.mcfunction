#Sort spells in slot order, if need be
execute if entity @s[nbt=!{Inventory:[{Slot:3b,tag:{cl.s.Spell:1b}}]},nbt={Inventory:[{Slot:4b,tag:{cl.s.Spell:1b}}]}] run function classes:mage/system/spellequip/logic/shiftspells/slot3
execute if entity @s[nbt=!{Inventory:[{Slot:2b,tag:{cl.s.Spell:1b}}]},nbt={Inventory:[{Slot:3b,tag:{cl.s.Spell:1b}}]}] run function classes:mage/system/spellequip/logic/shiftspells/slot2
execute if entity @s[nbt=!{Inventory:[{Slot:1b,tag:{cl.s.Spell:1b}}]},nbt={Inventory:[{Slot:2b,tag:{cl.s.Spell:1b}}]}] run function classes:mage/system/spellequip/logic/shiftspells/slot1
execute if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{cl.s.Spell:1b}}]},nbt={Inventory:[{Slot:1b,tag:{cl.s.Spell:1b}}]}] run function classes:mage/system/spellequip/logic/shiftspells/slot0

#Check for item missing
execute if entity @s[scores={cl.spellMenu=-1..},nbt=!{Inventory:[{Slot:6b,tag:{cl.spellselect.EquipWand:1b}}]}] run scoreboard players set @s cl.spellMenu -2
execute if entity @s[scores={cl.spellMenu=-1..},nbt=!{Inventory:[{Slot:7b,tag:{cl.spellselect.GoBack:1b}}]}] run scoreboard players set @s cl.spellMenu -3
execute if entity @s[scores={cl.spellMenu=-1..},nbt=!{Inventory:[{Slot:8b,tag:{cl.spellselect.Exit:1b}}]}] run scoreboard players set @s cl.spellMenu -4
execute if entity @s[scores={cl.spellMenu=-1},nbt=!{Inventory:[{Slot:20b,tag:{cl.spellselect.Fire:1b}}]}] run scoreboard players set @s cl.spellMenu 1
execute if entity @s[scores={cl.spellMenu=-1},nbt=!{Inventory:[{Slot:21b,tag:{cl.spellselect.Water:1b}}]}] run scoreboard players set @s cl.spellMenu 2
execute if entity @s[scores={cl.spellMenu=-1},nbt=!{Inventory:[{Slot:22b,tag:{cl.spellselect.Air:1b}}]}] run scoreboard players set @s cl.spellMenu 3
execute if entity @s[scores={cl.spellMenu=-1},nbt=!{Inventory:[{Slot:23b,tag:{cl.spellselect.Earth:1b}}]}] run scoreboard players set @s cl.spellMenu 4
execute if entity @s[scores={cl.spellMenu=-1},nbt=!{Inventory:[{Slot:24b,tag:{cl.spellselect.Magic:1b}}]}] run scoreboard players set @s cl.spellMenu 0

#Handle Equipping of spells
execute if entity @s[scores={cl.spellMenu=-2}] at @s run function classes:mage/system/spellequip/logic/equipwand/main

#Clear Items
execute unless score @s cl.spellMenu matches -2 unless score @s cl.spellMenu matches -4 run function classes:mage/system/spellequip/logic/clear/items

#Reset score to detect change items in spell type select screen
execute if entity @s[scores={cl.spellMenu=-1}] run function classes:mage/system/spellequip/gui/main
execute unless score @s cl.spellMenu matches -2 unless score @s cl.spellMenu matches -4 unless entity @s[scores={cl.spellMenu=0..}] run function classes:mage/system/spellequip/gui/main
execute if entity @s[scores={cl.spellMenu=0..}] run function classes:mage/system/spellequip/logic/spellselect
execute if entity @s[scores={cl.spellMenu=-4}] at @s run function classes:mage/system/spellequip/logic/restore/restore

execute if score @s cl.spellMenu matches -4 run scoreboard players reset @s cl.spellMenu
execute if score @s cl.spellMenu matches -2 run scoreboard players reset @s cl.spellMenu
advancement revoke @s only classes:mage/spellequip
