#Playsound
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1

#Reset the ingredients
function classes:blocks/magictable/reset

# Replace the items
loot replace block ~ ~ ~ container.7 loot classes:items/manapotion
