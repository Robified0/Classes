#Detect standard blocks in all pages, and reset based on what they are in.
advancement grant @s only classes:mage/newshit

#Reset score to detect change items
execute if entity @s[tag=cl.spellnav.selectelement,nbt=!{Inventory:[{Slot:20b,id:"minecraft:structure_block",tag:{SelectFire:1b}}]}] run function classes:operations/spellequip/player/mage/firespells
execute if entity @s[tag=cl.spellnav.selectelement,nbt=!{Inventory:[{Slot:21b,id:"minecraft:structure_block",tag:{SelectWater:1b}}]}] run function classes:operations/spellequip/player/mage/waterspells
execute if entity @s[tag=cl.spellnav.selectelement,nbt=!{Inventory:[{Slot:22b,id:"minecraft:structure_block",tag:{SelectAir:1b}}]}] run function classes:operations/spellequip/player/mage/airspells
execute if entity @s[tag=cl.spellnav.selectelement,nbt=!{Inventory:[{Slot:23b,id:"minecraft:structure_block",tag:{SelectEarth:1b}}]}] run function classes:operations/spellequip/player/mage/earthspells
execute if entity @s[tag=cl.spellnav.selectelement,nbt=!{Inventory:[{Slot:24b,id:"minecraft:structure_block",tag:{SelectMagic:1b}}]}] run function classes:operations/spellequip/player/mage/magicspells
execute if entity @s[tag=!cl.spellnav.spellsetup] run function classes:operations/spellequip/player/mage/spelltype

advancement revoke @s only classes:mage/newshit
