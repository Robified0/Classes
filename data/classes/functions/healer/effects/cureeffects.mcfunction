#Handle Particles
execute at @s anchored feet run particle minecraft:electric_spark ~ ~0.1 ~ 0.4 0.7 0.4 0.01 2 force
effect clear @s blindness
effect clear @s poison
effect clear @s hunger
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s unluck
effect clear @s wither
scoreboard players remove @s[scores={cl.e.CureEffects=1..}] cl.e.CureEffects 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:1b}}}] run effect give @s minecraft:mining_fatigue 1 200 true
