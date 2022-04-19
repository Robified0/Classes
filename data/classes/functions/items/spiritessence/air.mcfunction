# Display Particles
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 10

# Play sound as it works
execute if entity @s[scores={cl.item.spiritessence=..5}] run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 10 0.7

# Play sound when it finishes
execute if entity @s[scores={cl.item.spiritessence=5..}] run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 10 0.7

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.item.spiritessence=5..}] run data remove entity @s Item.tag."cl.SpiritEssence"

# Merge appropriate info to it
execute if entity @s[scores={cl.item.spiritessence=5..}] run data merge entity @s {Item:{tag:{CustomModelData:103,Air:1b,display:{Name:'{"text":"Air Essence","color":"yellow","italic":true}'}}}}
