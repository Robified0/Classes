scoreboard players operation @s cl.slo_id = #system cl.slo_id
scoreboard players operation @s cl.s.Teleport.t = #system cl.slo_id
scoreboard players operation @s cl.slo_dst = #dst cl.slowcast
scoreboard players operation @s cl.slo_dst_per = #dst_per cl.slowcast
tp @s ~ ~ ~ ~ ~
tag @s remove cl.r.new

function classes:abilities/spells/teleport/zprivate/launch
