#Main Page

execute if entity @s[nbt=!{Inventory:[{id:"minecraft:structure_block",Slot:20b}]},tag=!cl.spellnav.firespells] run function classes:operations/spellequip/player/mage/firespells
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:structure_block",Slot:21b}]}] run function classes:operations/spellequip/player/mage/waterspells
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:structure_block",Slot:22b}]}] run function classes:operations/spellequip/player/mage/airspells
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:structure_block",Slot:23b}]}] run function classes:operations/spellequip/player/mage/earthspells
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:structure_block",Slot:24b}]}] run function classes:operations/spellequip/player/mage/magicspells
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:barrier",Slot:8b}]}] run function classes:operations/spellequip/player/resetitems
