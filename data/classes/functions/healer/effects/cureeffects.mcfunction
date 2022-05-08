#Handle Particles
particle minecraft:electric_spark ~ ~0.1 ~ 0.4 0.7 0.4 0.01 2 force
effect clear @s blindness
effect clear @s poison
effect clear @s hunger
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s unluck
effect clear @s wither
effect clear @s slowness
scoreboard players remove @s[scores={cl.e.CureEffects=1..}] cl.e.CureEffects 1
execute if entity @s[scores={cl.e.CureEffects=..0}] run tellraw @s ["",{"text":"\u2734 ","color":"light_purple"},{"text":"Cure Effects ended.","italic":true,"color":"white"}]
