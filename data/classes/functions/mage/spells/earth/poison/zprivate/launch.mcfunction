execute as @e[scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=cl.slowcast,limit=1,sort=nearest] cl.slo_id run tag @s add cl.this

scoreboard players operation #temp cl.slowcast = @s cl.slo_dst_per
execute if score @s cl.slo_dst matches 1.. run function classes:mage/spells/earth/poison/raycast
scoreboard players operation @s cl.slo_dst -= @s cl.slo_dst_per
execute if score @s cl.slo_dst matches ..0 at @s run function classes:mage/spells/earth/poison/zprivate/end

tag @e[tag=cl.this] remove cl.this
