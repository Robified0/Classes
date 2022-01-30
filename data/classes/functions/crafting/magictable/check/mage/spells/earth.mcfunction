#Poison
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"}]} unless data block ~ ~ ~ {Items:[{Slot:0b}]} unless data block ~ ~ ~ {Items:[{Slot:2b}]} unless data block ~ ~ ~ {Items:[{Slot:6b}]} unless data block ~ ~ ~ {Items:[{Slot:8b}]} run function classes:crafting/magictable/recipes/mage/spells/earth/poison

# Iron Flesh
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Earth:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:iron_block"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Earth:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/earth/ironflesh

# Gold Flesh
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Earth:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:gold_block"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Earth:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/earth/goldflesh

# Diamond Flesh
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Earth:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:diamond_block"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Earth:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/earth/diamondflesh

# Iron Golem
execute if entity @p[distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Earth:1b}},{id:"minecraft:carved_pumpkin",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:3b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:4b,id:"minecraft:lapis_block"},{Count:1b,Slot:5b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Earth:1b}},{Count:1b,Slot:7b,id:"minecraft:iron_block"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Earth:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/earth/irongolem
