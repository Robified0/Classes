execute as @a[tag=!cl.r.slowcast,scores={cl.s.Teleport.t=1..}] if score @s cl.s.Teleport.t = @e[type=marker,tag=cl.r.slowcast,tag=cl.r.teleport,limit=1,sort=nearest] cl.s.Teleport.t run function classes:abilities/spells/teleport/end
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s
