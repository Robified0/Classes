# Display Particles
particle minecraft:small_flame ~ ~ ~ 0.2 0.2 0.2 0.02 100

#Prevent stacking
function classes:items/spiritessence/preventstack

# Play sound as it works
execute if entity @s[scores={cl.track.Soul.time=..8}] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 0.5

# Play sound when it finishes
execute if entity @s[scores={cl.track.Soul.time=8..}] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.8 0.5

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.track.Soul.time=8..}] run data remove entity @s Item.tag."cl.Soul"

# Merge appropriate info to it
execute if entity @s[scores={cl.track.Soul.time=8..}] run data merge entity @s {Item:{tag:{CustomModelData:101,cl.SoulFire:1b,display:{Name:'{"text":"Fire Soul","color":"red","italic":true}'}}}}
