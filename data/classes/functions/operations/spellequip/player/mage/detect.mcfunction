#need to detect back and exit here

#will also need to run a check for each spell in the hotbar here, and remove them from the listings if they are selected.

#Check for item missing
execute if entity @s[scores={cl.spellMenu=-3},nbt=!{Inventory:[{Slot:20b,tag:{cl.spellselect.Fire:1b}}]}] run scoreboard players set @s cl.spellMenu 1
execute if entity @s[scores={cl.spellMenu=-3},nbt=!{Inventory:[{Slot:21b,tag:{cl.spellselect.Water:1b}}]}] run scoreboard players set @s cl.spellMenu 2
execute if entity @s[scores={cl.spellMenu=-3},nbt=!{Inventory:[{Slot:22b,tag:{cl.spellselect.Air:1b}}]}] run scoreboard players set @s cl.spellMenu 3
execute if entity @s[scores={cl.spellMenu=-3},nbt=!{Inventory:[{Slot:23b,tag:{cl.spellselect.Earth:1b}}]}] run scoreboard players set @s cl.spellMenu 4
execute if entity @s[scores={cl.spellMenu=-3},nbt=!{Inventory:[{Slot:24b,tag:{cl.spellselect.Magic:1b}}]}] run scoreboard players set @s cl.spellMenu 0

#Set space for spells, then stop by tagging since it only needs to happen once.
execute unless entity @s[scores={cl.spellMenu=-3..}] run item replace entity @s hotbar.0 with minecraft:air
execute unless entity @s[scores={cl.spellMenu=-3..}] run item replace entity @s hotbar.1 with minecraft:air
execute unless entity @s[scores={cl.spellMenu=-3..}] run item replace entity @s hotbar.2 with minecraft:air
execute unless entity @s[scores={cl.spellMenu=-3..}] run item replace entity @s hotbar.3 with minecraft:air
execute unless entity @s[scores={cl.spellMenu=-3..}] run item replace entity @s hotbar.4 with minecraft:air

function classes:operations/spellequip/player/clearitems

#Reset score to detect change items in spell type select screen
execute unless entity @s[scores={cl.spellMenu=-2..}] run function classes:operations/spellequip/player/mage/main
execute if entity @s[scores={cl.spellMenu=0..}] run function classes:operations/spellequip/player/mage/spellselect


advancement revoke @s only classes:mage/newshit
