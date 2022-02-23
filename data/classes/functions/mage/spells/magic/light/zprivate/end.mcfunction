execute as @e[tag=!cl.slowcast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=cl.slowcast,tag=cl.light,limit=1,sort=nearest] cl.slo_id run function classes:mage/spells/magic/light/end
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s
