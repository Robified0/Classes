execute as @e[scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=slowcast,limit=1,sort=nearest] cl.slo_id run tag @s add this

scoreboard players operation #temp cl.slowcast = @s cl.slo_dst_per
execute if score @s cl.slo_dst matches 1.. run function classes:healer/spells/satiate/raycast
scoreboard players operation @s cl.slo_dst -= @s cl.slo_dst_per
execute if score @s cl.slo_dst matches ..0 at @s run function classes:healer/spells/satiate/zprivate/end

tag @e[tag=this] remove this
