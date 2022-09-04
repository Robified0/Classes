scoreboard players operation @s cl.slo_id = #system cl.slo_id

scoreboard players operation @s cl.slo_dst = #dst cl.slowcast
scoreboard players operation @s cl.slo_dst_per = #dst_per cl.slowcast
tp @s ~ ~ ~ ~ ~
tag @s remove cl.r.new

#Set how many blocks can be broken
scoreboard players set @s cl.spell.mine 3

function classes:mage/spells/earth/mine/zprivate/launch
