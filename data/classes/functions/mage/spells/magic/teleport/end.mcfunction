#Handle teleport
particle minecraft:flash ~ ~ ~ 1 1 1 0.1 10 force
execute if score @s cl.s.Teleport.t = @e[type=marker,tag=cl.r.teleport,sort=nearest,limit=1] cl.s.Teleport.t align xyz run tp @s @e[type=marker,tag=cl.r.teleport,sort=nearest,limit=1]
execute if score @s cl.s.Teleport.t = @e[type=marker,tag=cl.r.teleport,sort=nearest,limit=1] cl.s.Teleport.t run tp @s ^ ^ ^-0.40
particle minecraft:portal ~ ~ ~ ~0.1 ~1 ~0.1 1 20 force

playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
particle minecraft:portal ~ ~ ~ 0.3 0.5 0.3 0.1 200 force
particle minecraft:flash ~ ~ ~ 1 1 1 0.1 10 force

#Remove tag to target next player
tag @s remove cl.t.Teleport

#Reset
scoreboard players reset @s cl.slo_id
scoreboard players reset @s cl.s.Teleport.t
scoreboard players reset @s cl.slo_dst_per
scoreboard players reset @s cl.slo_dst
