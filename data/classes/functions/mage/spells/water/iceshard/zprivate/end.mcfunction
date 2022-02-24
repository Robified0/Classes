execute as @e[type=#classes:raycast,tag=!cl.r.slowcast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=cl.r.slowcast,tag=cl.r.iceshard,limit=1,sort=nearest] cl.slo_id run function classes:mage/spells/water/iceshard/end
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s
