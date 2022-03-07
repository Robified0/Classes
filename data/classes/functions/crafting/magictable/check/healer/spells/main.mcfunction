# Bless
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/buff/bless=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:golden_apple"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/buff/bless

# Fire Resist
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/buff/fireresist=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:3b,Slot:4b,id:"minecraft:magma_cream"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/buff/fireresist

# Guard
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/buff/guard=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:diamond_block"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/buff/guard

# Inspire
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/buff/inspire=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:10b,Slot:4b,id:"minecraft:blaze_powder"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/buff/inspire

# Speed Boost
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/buff/speedboost=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:10b,Slot:4b,id:"minecraft:sugar"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/buff/speedboost

# Vitality
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/buff/vitality=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:3b,Slot:4b,id:"minecraft:gold_block"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/buff/vitality

# Cure Effects
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/healing/cureeffects=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:20b,Slot:4b,id:"minecraft:quartz"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/healing/cureeffects

#Heal
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/healing/heal=true},distance=..3] if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"}]} unless data block ~ ~ ~ {Items:[{Slot:0b}]} unless data block ~ ~ ~ {Items:[{Slot:2b}]} unless data block ~ ~ ~ {Items:[{Slot:6b}]} unless data block ~ ~ ~ {Items:[{Slot:8b}]} run function classes:crafting/magictable/recipes/healer/spells/healing/heal

# Heal Circle
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/healing/healcircle=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:3b,Slot:4b,id:"minecraft:glistering_melon_slice"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/healing/healcircle

# Mending
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/healing/mending=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:3b,Slot:4b,id:"minecraft:ghast_tear"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/healing/mending

# Satiate
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/healing/satiate=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:10b,Slot:4b,id:"minecraft:glow_berries"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/healing/satiate

# Holy Strike
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/smiting/holystrike=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:fire_charge"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/smiting/holystrike

# Stop Undead
execute if entity @p[scores={cl.Class=4},advancements={classes:healer/learnspell/smiting/holystrike=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Holy:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:20b,Slot:3b,id:"minecraft:bone"},{Count:1b,Slot:4b,id:"minecraft:lapis_lazuli"},{Count:20b,Slot:5b,id:"minecraft:rotten_flesh"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Holy:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Holy:1b}}]} run function classes:crafting/magictable/recipes/healer/spells/smiting/holystrike