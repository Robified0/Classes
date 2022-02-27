#Handle Particles
execute at @s anchored feet run particle minecraft:wax_on ~ ~0.1 ~ 0.4 0.1 0.4 0.01 2 force
scoreboard players remove @s[scores={cl.e.Bless=1..}] cl.e.Bless 1
execute if data entity @s {AbsorptionAmount:0.0f} run effect clear @s minecraft:absorption
execute if data entity @s {AbsorptionAmount:0.0f} run scoreboard players set @s cl.e.Bless 0
