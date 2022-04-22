##Executing as Magic Table marker, when a spellcaster is near, and item is found in dropper:
# blocks/magictable/recipes/main

# Blaze Powder
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.blaze_powder matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:blaze_powder",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/blaze_powder

# Bone
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.bone matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:bone",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/bone

# Diamond Block
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.diamond_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/diamond_block

# Fire Charge
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.fire_charge matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:fire_charge",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/fire_charge

# Ghast Tear
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.ghast_tear matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:ghast_tear",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/ghast_tear

# Glistering Melon
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.glistering_melon_slice matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:glistering_melon_slice",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/glistering_melon_slice

# Glow Berries
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.glow_berries matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:glow_berries",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/glow_berries

# Gold Block
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.gold_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:gold_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/gold_block

# Golden Apple
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.golden_apple matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:golden_apple",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/golden_apple

# Holy Essence
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.holy_essence matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:structure_block",tag:{Holy:1b},Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/holy_essence

# Lapis Lazuli
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.lapis_lazuli matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/lapis_lazuli

# Magma Cream
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.magma_cream matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:magma_cream",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/magma_cream

# Quartz
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.quartz matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:quartz",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/quartz

# Rotten Flesh
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.rotten_flesh matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:rotten_flesh",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/rotten_flesh

# Sugar
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.sugar matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:sugar",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/healer/items/sugar
