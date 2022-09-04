### calculations based on a 0.5 raycast stepsize.
### if you change raycast stepsize, change *0.5 accordingly
# how many half blocks per step (4*0.5) = 2 blocks per tick
scoreboard players set #dst_per cl.slowcast 4
# how many half blocks to travel (24*0.5) = 12 blocks
scoreboard players set #dst cl.slowcast 36

#Start raycast
execute positioned ~ ~1.45 ~ run function classes:mage/spells/water/waterstrike/start
