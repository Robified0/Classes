scoreboard players set @s cl.HitBySpell 400
function classes:main/loot_table/main
scoreboard players set @s cl.e.DeepFreeze 300
data merge entity @s {NoAI:1b,Silent:1b,Invulnerable:1b}
fill ~ ~ ~ ~ ~1 ~ packed_ice keep
particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 100 normal
particle dust 0.129 0.914 1.000 1 ~ ~ ~ 5 0.75 5 0.01 500 normal

#Get mobs angry if not already
execute if entity @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Sound effect
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.8 2
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 1.5
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 2
