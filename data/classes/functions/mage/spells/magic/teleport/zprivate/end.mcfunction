execute as @e[tag=!cl.slowcast,scores={cl.s.Teleport.t=1..}] if score @s cl.s.Teleport.t = @e[type=marker,tag=cl.slowcast,tag=cl.teleport,limit=1,sort=nearest] cl.s.Teleport.t run function classes:mage/spells/magic/teleport/end
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s
