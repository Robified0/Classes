##Executing as Magic Table marker, when a spellcaster is near, and item is found in dropper:
# blocks/magictable/recipes/main

# Magic Essence
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.magic_essence matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:structure_block",tag:{Magic:1b},Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/magic_essence

# Fire Essence
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.fire_essence matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:structure_block",tag:{Fire:1b},Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/fire_essence

# Water Essence
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.water_essence matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:structure_block",tag:{Water:1b},Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/water_essence

# Air Essence
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.air_essence matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:structure_block",tag:{Air:1b},Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/air_essence

# Earth Essence
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.earth_essence matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:structure_block",tag:{Earth:1b},Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/earth_essence

# Carved Pumpkin
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.carved_pumpkin matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:carved_pumpkin",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/carved_pumpkin

# Coal Block
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.coal_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:coal_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/coal_block

# Diamond Block
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.diamond_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/diamond_block

# End Crystal
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.end_crystal matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:end_crystal",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/end_crystal

# Ender Eye
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.ender_eye matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:ender_eye",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/ender_eye

# Fire Charge
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.fire_charge matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:fire_charge",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/fire_charge

# Glistering Melon Slice
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.glistering_melon_slice matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:glistering_melon_slice",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/glistering_melon_slice

# Glowstone
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.glowstone matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:glowstone",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/glowstone

# Gold BLock
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.gold_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:gold_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/gold_block

# Golden Carrot
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.golden_carrot matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:golden_carrot",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/golden_carrot

# Ice
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.ice matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:ice",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/ice

# Iron Block
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.iron_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:iron_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/iron_block

# Lapis Block
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.lapis_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/lapis_block

# Lapis Lazuli
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.lapis_lazuli matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/lapis_lazuli

# Magma Cream
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.magma_cream matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:magma_cream",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/magma_cream

# Nautilus Shell
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.nautilus_shell matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:nautilus_shell",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/nautilus_shell

# Nether Star
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.nether_star matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:nether_star",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/nether_star

# Packed Ice
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.packed_ice matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:packed_ice",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/packed_ice

# Phantom Membrane
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.phantom_membrane matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:phantom_membrane",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/phantom_membrane

# Rabbit Foot
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.rabbit_foot matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:rabbit_foot",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/rabbit_foot

# Sea Lantern
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.sea_lantern matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:sea_lantern",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/sea_lantern

# Snow Block
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.snow_block matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:snow_block",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/snow_block

# Sugar
execute unless score @p[scores={cl.Class=3},distance=..2] cl.item.research.sugar matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:sugar",Count:1b},{id:"minecraft:writable_book",Count:1b}]} run function classes:blocks/magictable/research/mage/items/sugar
