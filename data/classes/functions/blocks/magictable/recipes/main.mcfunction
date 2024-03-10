#Copy book ID to marker
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:book",tag:{cl.book.template:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} store result score @s cl.book.template run data get block ~ ~ ~ Items[{tag:{cl.book.template:1b}}].tag."cl.spell.craft"

#Get number of souls in table (for correct detection/deductions)
#execute store result score @s cl.track.Rune.Count run data get block ~ ~ ~ Items[{id:"minecraft:warped_fungus_on_a_stick",tag:{cl.isStaff:1b}}].tag."cl.RuneSlots"

#Mana Potion
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:glass_bottle"},{id:"minecraft:blaze_powder"}]} run function classes:blocks/magictable/recipes/items/potions/manapotion

#Test the up/down
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:stone"},{id:"minecraft:lapis_lazuli"},{id:"minecraft:blaze_rod"}]} run function classes:blocks/magictable/recipes/enchant/fire

#Wand
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:lapis_lazuli"},{id:"minecraft:stick"},{id:"minecraft:iron_ingot"}]} run function classes:blocks/magictable/recipes/items/staffs/starterstaff

#Rune crafting
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:structure_block",tag:{cl.isSoul:1b}},{id:"minecraft:lapis_lazuli"},{id:"minecraft:book",tag:{cl.book.template:1b}}]} run function classes:blocks/magictable/recipes/items/runes/create

#Upgrade Staff
execute if score @s cl.track.Rune.Count matches ..4 if block ~ ~ ~ barrel{Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{cl.isStaff:1b}},{id:"minecraft:structure_block",tag:{cl.Soul:1b}},{id:"minecraft:lapis_block"}]} run function classes:blocks/magictable/recipes/items/staffs/upgrade/staff

#Book Duplicate
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:book",tag:{cl.book.template:1b}},{id:"minecraft:writable_book"},{id:"minecraft:glow_ink_sac"}]} run function classes:blocks/magictable/recipes/items/templates/duplicate
