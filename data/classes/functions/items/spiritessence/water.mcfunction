# Display Particles
particle minecraft:bubble ~ ~ ~ 0.1 0.1 0.1 0.1 10

# Play sound when it finishes
execute if entity @s[scores={cl.item.spiritessence=5..}] run playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 1 2 1

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.item.spiritessence=5..}] run data remove entity @s Item.tag."cl.SpiritEssence"

# Merge appropriate info to it
execute if entity @s[scores={cl.item.spiritessence=5..}] run data merge entity @s {Item:{tag:{CustomModelData:102,Water:1b,display:{Name:'{"text":"Water Essence","color":"blue","italic":true}'}}}}
