# Torch
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"}]} unless data block ~ ~ ~ {Items:[{Slot:0b}]} unless data block ~ ~ ~ {Items:[{Slot:2b}]} unless data block ~ ~ ~ {Items:[{Slot:6b}]} unless data block ~ ~ ~ {Items:[{Slot:8b}]} run function classes:crafting/magictable/recipes/mage/spells/fire/torch

# Bed of Coals
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b,Slot:0b},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{id:"minecraft:lapis_lazuli",Count:1b,Slot:2b},{Count:1b,Slot:3b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:4b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:5b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:6b,id:"minecraft:coal"},{Count:1b,Slot:7b,id:"minecraft:coal"},{Count:1b,Slot:8b,id:"minecraft:coal"}]} run function classes:crafting/magictable/recipes/mage/spells/fire/bedofcoals

# Flame Burst
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Fire:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:fire_charge"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Fire:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/fire/flameburst

# Fire Shield
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Fire:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:shield"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Fire:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Fire:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/fire/fireshield
