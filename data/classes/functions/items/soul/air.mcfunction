# Display Particles
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 10

#Prevent stacking
function classes:items/soul/preventstack

# Play sound as it works
execute if entity @s[scores={cl.track.Soul.time=..8}] run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 10 0.7

# Play sound when it finishes
execute if entity @s[scores={cl.track.Soul.time=8..}] run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 10 0.7

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.track.Soul.time=8..}] run data remove entity @s Item.tag."cl.Soul"

# Merge appropriate info to it
execute if entity @s[scores={cl.track.Soul.time=8..}] run data merge entity @s {Item:{tag:{HideFlags:127,CustomModelData:104,cl.isSoul.1b,cl.SoulAir:1b,Enchantments:[{}],display:{Name:'{"translate":"item.classes.soul.air","color":"yellow","italic":true}'}}}}
