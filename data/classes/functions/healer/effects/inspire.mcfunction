#Handle Particles
execute at @s anchored feet run particle minecraft:wax_on ~ ~0.1 ~ 0.4 0.1 0.4 0.01 1 force
scoreboard players remove @s[scores={cl.e.Inspire=1..}] cl.e.Inspire 1
