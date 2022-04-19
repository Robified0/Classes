# Display Particles
particle minecraft:rain ~ ~ ~ 0.3 0.3 0.3 1 100

# Play sound as it works
execute if entity @s[scores={cl.item.spiritessence=..5}] run playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 0.3 2

# Play sound when it finishes
execute if entity @s[scores={cl.item.spiritessence=5..}] run playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 0.8 2

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.item.spiritessence=5..}] run data remove entity @s Item.tag."cl.SpiritEssence"

# Merge appropriate info to it
execute if entity @s[scores={cl.item.spiritessence=5..}] run data merge entity @s {Item:{tag:{CustomModelData:102,Water:1b,display:{Name:'{"text":"Water Essence","color":"blue","italic":true}'}}}}
