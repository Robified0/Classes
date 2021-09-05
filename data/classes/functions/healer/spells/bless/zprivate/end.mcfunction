execute as @e[tag=!slowcast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=slowcast,limit=1,sort=nearest] cl.slo_id run function classes:healer/spells/bless/end
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s
