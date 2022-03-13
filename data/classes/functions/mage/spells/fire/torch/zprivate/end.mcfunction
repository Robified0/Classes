execute as @a[tag=!cl.r.slowcast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=cl.r.slowcast,tag=cl.r.torch,limit=1,sort=nearest] cl.slo_id run function classes:mage/spells/fire/torch/end
execute at @s run particle minecraft:small_flame ^ ^ ^ 0.3 0.3 0.3 0.01 50 force
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s
