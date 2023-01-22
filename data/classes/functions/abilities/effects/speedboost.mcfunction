#Handle Particles
execute at @s anchored feet run particle minecraft:dust 1 1 1 0.5 ~ ~0.1 ~ 0.4 0.1 0.4 0.01 1 force
scoreboard players remove @s[scores={cl.e.SpeedBoost=1..}] cl.e.SpeedBoost 1
