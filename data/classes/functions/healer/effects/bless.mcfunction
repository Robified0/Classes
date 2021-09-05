#Handle Particles
execute at @s anchored feet run particle minecraft:wax_on ~ ~0.1 ~ 0.4 0.1 0.4 0.01 2 force
scoreboard players remove @s[scores={cl.e.Bless=1..}] cl.e.Bless 1
