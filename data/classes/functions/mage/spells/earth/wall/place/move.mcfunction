scoreboard players remove @s cl.spell.earthWall.move 1
execute if score @s cl.spell.earthWall.move matches 1.. run tp @s ~ ~0.1 ~
execute if score @s cl.spell.earthWall.move matches 0 run scoreboard players reset @s cl.spell.earthWall.move
particle dust 0.173 1.000 0.078 1 ~ ~1 ~ 0.5 0 0.5 1 5 force
particle dust 0.059 0.341 0.024 1 ~ ~1 ~ 0.5 0 0.5 1 5 force
