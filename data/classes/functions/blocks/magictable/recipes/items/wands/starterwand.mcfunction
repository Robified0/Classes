#Playsound
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.2 1

#Crafted the wand, give them the advancement
execute if score @p cl.Class matches 3 run advancement grant @p only classes:mage/wands/starter
execute if score @p cl.Class matches 4 run advancement grant @p only classes:healer/wands/starter

#Reset the ingredients
function classes:blocks/magictable/reset

# Summon the item
loot replace block ~ ~ ~ container.7 loot classes:items/wands/starterwand
