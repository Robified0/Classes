# Display Particles
particle minecraft:dust 0.173 1.000 0.078 1 ~ ~ ~ 0.2 0.2 0.2 0.01 50

#Prevent stacking
function classes:items/spiritessence/preventstack

# Play sound as it works
execute if entity @s[scores={cl.item.spiritessence=..8}] run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

# Play sound when it finishes
execute if entity @s[scores={cl.item.spiritessence=8..}] run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.2

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.item.spiritessence=8..}] run data remove entity @s Item.tag."cl.SpiritEssence"

# Merge appropriate info to it
execute if entity @s[scores={cl.item.spiritessence=8..}] run data merge entity @s {Item:{tag:{CustomModelData:104,Earth:1b,display:{Name:'{"text":"Earth Essence","color":"green","italic":true}'}}}}
