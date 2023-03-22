#Running as all Earth Wall entities in main/delay/20

#Remove score
scoreboard players remove @s cl.spell.earthWall 1

#Kill the entities
execute if score @s cl.spell.earthWall matches ..0 run tp @s ~ -2000 ~

#Do death particle effect
execute if score @s cl.spell.earthWall matches ..0 run particle end_rod ~ ~1 ~ 0 0 0 0.1 2 force
execute if score @s cl.spell.earthWall matches ..0 run particle dust 0.173 1.000 0.078 1 ~ ~1 ~ 0.5 0 0.5 1 5 force
execute if score @s cl.spell.earthWall matches ..0 run particle dust 0.059 0.341 0.024 1 ~ ~1 ~ 0.5 0 0.5 1 5 force
