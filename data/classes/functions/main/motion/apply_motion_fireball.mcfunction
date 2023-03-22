execute store result score @s cl.motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s cl.motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s cl.motion_z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s cl.motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s cl.motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s cl.motion_z2 run data get entity @s Pos[2] 1000

execute if entity @s[type=fireball] run summon fireball ~ ~ ~ {Tags:["cl.t.newFireball"]}
execute if entity @s[type=small_fireball] run summon small_fireball ~ ~ ~ {Tags:["cl.t.newFireball"]}
execute store result entity @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.newFireballProc,sort=nearest,limit=1] Motion[0] double 0.01 run scoreboard players operation @s cl.motion_x2 -= @s cl.motion_x1
execute store result entity @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.newFireballProc,sort=nearest,limit=1] Motion[1] double 0.01 run scoreboard players operation @s cl.motion_y2 -= @s cl.motion_y1
execute store result entity @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.newFireballProc,sort=nearest,limit=1] Motion[2] double 0.01 run scoreboard players operation @s cl.motion_z2 -= @s cl.motion_z1

execute store result score @s cl.power_0 run data get entity @s power[0] -10000000
execute store result score @s cl.power_1 run data get entity @s power[1] -10000000
execute store result score @s cl.power_2 run data get entity @s power[2] -10000000

execute store result entity @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.newFireballProc,sort=nearest,limit=1] power[0] double 0.00000005 run scoreboard players get @s cl.power_0
execute store result entity @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.newFireballProc,sort=nearest,limit=1] power[1] double 0.00000005 run scoreboard players get @s cl.power_1
execute store result entity @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.newFireballProc,sort=nearest,limit=1] power[2] double 0.00000005 run scoreboard players get @s cl.power_2

tag @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.newFireballProc] add cl.t.newFireballProc
tag @e[type=#classes:fireballs,tag=cl.t.newFireball,tag=!cl.t.motion_added] add cl.t.motion_added
kill @s
