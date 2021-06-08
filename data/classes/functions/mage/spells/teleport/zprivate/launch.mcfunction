execute as @e[scores={slo_id=1..}] if score @s slo_id = @e[type=marker,tag=slowcast,limit=1,sort=nearest] slo_id run tag @s add this

scoreboard players operation #temp slowcast = @s slo_dst_per
execute if score @s slo_dst matches 1.. run function classes:mage/spells/teleport/raycast
scoreboard players operation @s slo_dst -= @s slo_dst_per
execute if score @s slo_dst matches ..0 at @s run function classes:mage/spells/teleport/zprivate/end

tag @e[tag=this] remove this
