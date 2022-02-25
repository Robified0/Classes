#Tells players they don't have the knowledge
title @s times 20 100 20
title @s subtitle {"text":"You do not have the knowledge to cast this spell!","color":"red"}
title @s title {"text":""}

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell backfire
effect give @s minecraft:instant_damage 1 0 true

#Sound effect - player only
execute at @s run playsound minecraft:entity.ender_dragon.growl voice @s ~ ~ ~ 0.5 2

#Particle effect (black dust)
execute as @s at @s run particle dust 0.000 0.000 0.000 0.5 ~ ~ ~ 0.5 1 0.5 0.1 150 force
