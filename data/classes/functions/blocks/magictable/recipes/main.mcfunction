#Copy book ID to marker
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:book",tag:{cl.book.template:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} store result score @s cl.book.template run data get block ~ ~ ~ Items[{tag:{cl.book.template:1b}}].tag."cl.book.craft"

#Get number of souls in table (for correct detection/deductions)
execute store result score @s cl.track.Rune.Count run data get block ~ ~ ~ Items[{id:"minecraft:structure_block",tag:{cl.isSoul:1b}}].Count

#Mana Potion
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:glass_bottle"},{id:"minecraft:blaze_powder"}]} run function classes:blocks/magictable/recipes/items/potions/manapotion
#Wand
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:stick"},{id:"minecraft:iron_ingot"}]} run function classes:blocks/magictable/recipes/items/staffs/ironstaff

#Rune crafting
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:structure_block",tag:{cl.isSoul:1b}},{id:"minecraft:lapis_lazuli"},{id:"minecraft:book",tag:{cl.book.template:1b}}]} run function classes:blocks/magictable/recipes/items/runes/branch

#Upgrade Wand
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{cl.RuneSlots:2}},{id:"minecraft:structure_block",tag:{cl.Soul:1b},Count:10b},{id:"minecraft:lapis_lazuli"}]} run function classes:blocks/magictable/recipes/items/staffs/upgrade/2slot
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{cl.RuneSlots:1}},{id:"minecraft:structure_block",tag:{cl.Soul:1b},Count:5b},{id:"minecraft:lapis_lazuli"}]} run function classes:blocks/magictable/recipes/items/staffs/upgrade/2slot

#Book Duplicate
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:book",tag:{cl.book.template:1b}},{id:"minecraft:writable_book"},{id:"minecraft:glow_ink_sac"}]} run function classes:blocks/magictable/recipes/items/templates/duplicate
