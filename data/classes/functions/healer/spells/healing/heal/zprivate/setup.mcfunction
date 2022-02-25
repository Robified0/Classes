scoreboard players operation @s cl.slo_id = system cl.slo_id

scoreboard players operation @s cl.slo_dst = dst cl.slowcast
scoreboard players operation @s cl.slo_dst_per = dst_per cl.slowcast
execute at @p anchored eyes run tp @s ~ ~ ~ ~ ~
tag @s remove new

function classes:healer/spells/healing/heal/zprivate/launch
