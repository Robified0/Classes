## Running as item tagged as cl.SpiritEssence (main/delay/20)
#Increase the item scoreboard
scoreboard players add @s[predicate=classes:items/souls/locationcheck] cl.track.Soul.time 1

# Air
execute if entity @s[predicate=classes:items/souls/ycheck,scores={cl.track.Soul.time=3..}] unless block ~ ~1 ~ #minecraft:crops unless block ~ ~ ~ minecraft:lava unless block ~ ~ ~ minecraft:water run function classes:items/soul/air

# Earth
execute if entity @s[scores={cl.track.Soul.time=3..}] if block ~ ~1 ~ #minecraft:crops run function classes:items/soul/earth

# Fire
execute if entity @s[predicate=classes:items/souls/firecheck,scores={cl.track.Soul.time=3..}] run function classes:items/soul/fire

# Water
execute if entity @s[predicate=classes:items/souls/watercheck,scores={cl.track.Soul.time=3..}] run function classes:items/soul/water
