##Set distance and speed of raycast

### calculations based on a 0.1 raycast stepsize.
### if you change raycast stepsize, change *0.1 accordingly
# how many half blocks per step (4*0.1) = 2 blocks per tick
scoreboard players set dst_per cl.slowcast 4
# how many half blocks to travel (24*0.1) = 12 blocks
scoreboard players set dst cl.slowcast 48

execute positioned ~ ~1.45 ~ run function classes:mage/spells/earth/mine/start
