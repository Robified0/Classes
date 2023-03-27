#Handle Particles
particle minecraft:electric_spark ~ ~0.1 ~ 0.4 0.7 0.4 0.01 2 force

#Cure negative effects
effect clear @s minecraft:blindness
effect clear @s minecraft:poison
effect clear @s minecraft:hunger
effect clear @s minecraft:levitation
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:nausea
effect clear @s minecraft:unluck
effect clear @s minecraft:wither
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness

#Countdown score
scoreboard players remove @s[scores={cl.e.CureEffects=1..}] cl.e.CureEffects 1
