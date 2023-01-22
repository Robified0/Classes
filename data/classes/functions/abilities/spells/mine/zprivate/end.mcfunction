#Center on block
execute at @s align xz run tp @s ~0.5 ~ ~0.5

#Destroy blocks
execute if block ~ ~ ~ #classes:mage/mine/mineable unless block ~ ~ ~ #minecraft:needs_diamond_tool unless block ~ ~ ~ #minecraft:features_cannot_replace run setblock ~ ~ ~ minecraft:air destroy

#Handle player score reset
execute as @a[tag=!cl.r.slowcast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=cl.r.slowcast,tag=cl.r.mine,limit=1,sort=nearest] cl.slo_id run function classes:abilities/spells/mine/end

#Reset Scores
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per

#Kill Marker
kill @s
