# Light
execute if entity @p[scores={cl.Class=3},advancements={classes:mage/learnspell/magic/light=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Magic:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:5b,Slot:4b,id:"minecraft:glowstone"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Magic:1b}}]} run function classes:blocks/magictable/recipes/mage/spells/magic/light

# Teleport
execute if entity @p[scores={cl.Class=3},advancements={classes:mage/learnspell/magic/teleport=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Magic:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:3b,Slot:4b,id:"minecraft:ender_eye"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Magic:1b}}]} run function classes:blocks/magictable/recipes/mage/spells/magic/teleport

# Shield
execute if entity @p[scores={cl.Class=3},advancements={classes:mage/learnspell/magic/shield=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Magic:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:end_crystal"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Magic:1b}}]} run function classes:blocks/magictable/recipes/mage/spells/magic/shield

# Invisibility
execute if entity @p[scores={cl.Class=3},advancements={classes:mage/learnspell/magic/invisibility=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Magic:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:3b,Slot:4b,id:"minecraft:golden_carrot"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Magic:1b}}]} run function classes:blocks/magictable/recipes/mage/spells/magic/invisibility

# Mend
execute if entity @p[scores={cl.Class=3},advancements={classes:mage/learnspell/magic/mend=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Magic:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:glistering_melon_slice"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Magic:1b}}]} run function classes:blocks/magictable/recipes/mage/spells/magic/mend

# Mage Armor
execute if entity @p[scores={cl.Class=3},advancements={classes:mage/learnspell/magic/magearmor=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Magic:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:leather_chestplate"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Magic:1b}}]} run function classes:blocks/magictable/recipes/mage/spells/magic/magearmor

# Magic Missile
execute if entity @p[scores={cl.Class=3},advancements={classes:mage/learnspell/magic/magicmissile=true},distance=..3] if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:structure_block",tag:{Magic:1b}},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"}]} unless data block ~ ~ ~ {Items:[{Slot:0b}]} unless data block ~ ~ ~ {Items:[{Slot:2b}]} unless data block ~ ~ ~ {Items:[{Slot:6b}]} unless data block ~ ~ ~ {Items:[{Slot:8b}]} run function classes:blocks/magictable/recipes/mage/spells/magic/magicmissile