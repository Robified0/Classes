#Handle Particles
execute at @s anchored feet run particle minecraft:heart ~ ~0.1 ~ 0.2 0.1 0.2 0.01 1 force
scoreboard players remove @s[scores={cl.e.Vitality=1..}] cl.e.Vitality 1
