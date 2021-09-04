#Handle Particles
execute at @s anchored feet run particle minecraft:small_flame ~ ~0.1 ~ 0.4 0.1 0.4 0.01 1 force
scoreboard players remove @s[scores={cl.e.FireResist=1..}] cl.e.FireResist 1
