#Mana Potion
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:glass_bottle"},{id:"minecraft:blaze_powder"}]} run function classes:blocks/magictable/recipes/items/potions/manapotion
#Wand
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:stick"},{id:"minecraft:iron_ingot"}]} run function classes:blocks/magictable/recipes/items/wands/starterwand
#Torch Rune
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:structure_block",tag:{Fire:1b}},{id:"minecraft:stone"}]} run function classes:blocks/magictable/recipes/items/runes/fire/torch

#Bed Of Coals Rune
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:structure_block",tag:{Fire:1b}},{id:"minecraft:coal_block"}]} run function classes:blocks/magictable/recipes/items/runes/fire/bedofcoals

#Fireball Rune
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:structure_block",tag:{Fire:1b}},{id:"minecraft:fire_charge"}]} run function classes:blocks/magictable/recipes/items/runes/fire/fireball
