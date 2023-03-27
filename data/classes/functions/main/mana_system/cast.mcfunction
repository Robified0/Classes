#Play Sound
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 0.4 0.6

#Play base particles
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 60 force

#Magic Particles & Sound
execute if entity @s[tag=cl.spell.casted.magic] run particle minecraft:portal ~ ~ ~ 0.3 1 0.3 0.08 30 force

#Fire Particles & Sound
execute if entity @s[tag=cl.spell.casted.fire] run particle minecraft:small_flame ~ ~ ~ 0.3 1 0.3 0.08 50 force
execute if entity @s[tag=cl.spell.casted.fire] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5

#Holy Particles
execute if entity @s[tag=cl.spell.casted.holy] run particle minecraft:end_rod ~ ~ ~ 0.3 0.75 0.3 0.08 30 force
execute if entity @s[tag=cl.spell.casted.holy] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1.5

#Air Particles & Sound
execute if entity @s[tag=cl.spell.casted.air] run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
execute if entity @s[tag=cl.spell.casted.air] run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1

#Water Particles & Sound
execute if entity @s[tag=cl.spell.casted.water] run particle minecraft:falling_water ~ ~ ~ 0.5 1 0.5 10 50 force
execute if entity @s[tag=cl.spell.casted.water] run playsound minecraft:block.water.ambient player @a ~ ~ ~ 0.5 1
execute if entity @s[tag=cl.spell.casted.water] run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1

#Earth Particles & Sound
execute if entity @s[tag=cl.spell.casted.earth] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
execute if entity @s[tag=cl.spell.casted.earth] run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Ice Particles & Sound
execute if entity @s[tag=cl.spell.casted.ice] run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 1 0.5 1 50 force
execute if entity @s[tag=cl.spell.casted.ice] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.2 2
execute if entity @s[tag=cl.spell.casted.ice] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1.5

#Remove all tags
tag @s remove cl.spell.casted.magic
tag @s remove cl.spell.casted.earth
tag @s remove cl.spell.casted.air
tag @s remove cl.spell.casted.fire
tag @s remove cl.spell.casted.water
tag @s remove cl.spell.casted.ice
tag @s remove cl.spell.casted.holy
