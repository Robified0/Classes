scoreboard players set @s cl.e.DeepFreeze 200
fill ~ ~ ~ ~ ~1 ~ packed_ice keep
particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 100 normal

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

#Sound effect
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.8 2
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 1.5
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 2
