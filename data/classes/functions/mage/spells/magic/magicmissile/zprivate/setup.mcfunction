scoreboard players operation @s cl.slo_id = system cl.slo_id

scoreboard players operation @s cl.slo_dst = dst cl.slowcast
scoreboard players operation @s cl.slo_dst_per = dst_per cl.slowcast
tp @s ~ ~ ~ ~ ~
tag @s remove cl.r.new

##Get damage score
# Set top damage first (Take both numbers below and add them to get the true range/top damagea)
scoreboard players set @s cl.damageRange 4
# Run randomize function
function classes:operations/damage/random
#Boost it by the below to make sure it always does at *least* this amount
scoreboard players add @s cl.damageRandom 2

# Start raycast
function classes:mage/spells/magic/magicmissile/zprivate/launch
