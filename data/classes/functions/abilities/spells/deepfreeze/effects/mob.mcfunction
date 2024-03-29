#Set score for countdown of effect
scoreboard players set @s cl.e.DeepFreeze 200

#Summon two ice block_displays for visual effect
summon block_display ~-0.5 ~ ~-0.5 {Tags:["cl.e.DeepFreeze"],block_state:{Name:"minecraft:ice"}}
summon block_display ~-0.5 ~1 ~-0.5 {Tags:["cl.e.DeepFreeze"],block_state:{Name:"minecraft:ice"}}

#Create dust particle around mob hit
particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 100 normal

# Make mob AI trigger for combat/fleeing
damage @s 0 minecraft:freeze by @p

#Sound effect
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.8 2
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 1.5
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 2
