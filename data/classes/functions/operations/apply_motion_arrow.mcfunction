execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s cl.motion_x2 -= @s cl.motion_x1
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s cl.motion_y2 -= @s cl.motion_y1
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s cl.motion_z2 -= @s cl.motion_z1

tag @s add motion_added
