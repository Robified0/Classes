scoreboard players operation @s cl.slo_id = #system cl.slo_id

scoreboard players operation @s cl.slo_dst = #dst cl.slowcast
scoreboard players operation @s cl.slo_dst_per = #dst_per cl.slowcast
tp @s ~ ~ ~ ~ ~
tag @s remove cl.r.new

## Get damage score
# Set top damage first (this is the range minus the random below)
scoreboard players set @s cl.damageRange 2
# Run randomize function
function classes:operations/damage/random
#Boost it by the below to make sure it always does at *least* this amount
scoreboard players add @s cl.damageRandom 4

function classes:mage/spells/fire/torch/zprivate/launch
