# Display Particles
particle minecraft:rain ~ ~ ~ 0.3 0.3 0.3 1 100

#Prevent stacking
function classes:items/soul/preventstack

# Play sound as it works
execute if entity @s[scores={cl.track.Soul.time=..8}] run playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 0.3 2

# Play sound when it finishes
execute if entity @s[scores={cl.track.Soul.time=8..}] run playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 0.8 2

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.track.Soul.time=8..}] run data remove entity @s Item.tag."cl.Soul"

# Merge appropriate info to it
execute if entity @s[scores={cl.track.Soul.time=8..}] run data merge entity @s {Item:{tag:{CustomModelData:102,cl.SoulWater:1b,display:{Name:'{"text":"Water Soul","color":"blue","italic":true}'}}}}
