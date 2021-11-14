execute store result score @s cl.motion_x1 run data get entity @s Pos[0] 100000
execute store result score @s cl.motion_y1 run data get entity @s Pos[1] 100000
execute store result score @s cl.motion_z1 run data get entity @s Pos[2] 100000

tp @s ^ ^ ^0.1

execute store result score @s cl.motion_x2 run data get entity @s Pos[0] 100000
execute store result score @s cl.motion_y2 run data get entity @s Pos[1] 100000
execute store result score @s cl.motion_z2 run data get entity @s Pos[2] 100000

execute if entity @s[type=#classes:fireballs] run function classes:operations/apply_motion_fireball
execute if entity @s[type=#minecraft:arrows] run function classes:operations/apply_motion_arrow
