## Running as item tagged as cl.SpiritEssence (operations/delay/20)
#Increase the item scoreboard
scoreboard players add @s[predicate=classes:items/spiritessence/locationcheck] cl.item.spiritessence 1

# Air
execute if entity @s[predicate=classes:items/spiritessence/ycheck,scores={cl.item.spiritessence=1..}] if block ~ ~ ~ #classes:airtypes run function classes:items/spiritessence/air

# Earth
execute if entity @s[scores={cl.item.spiritessence=1..}] if block ~ ~1 ~ #minecraft:crops run function classes:items/spiritessence/earth

# Fire
execute if entity @s[predicate=classes:items/spiritessence/firecheck,scores={cl.item.spiritessence=1..}] run function classes:items/spiritessence/fire

# Water
execute if entity @s[scores={cl.item.spiritessence=1..}] if block ~ ~ ~ minecraft:water run function classes:items/spiritessence/water
