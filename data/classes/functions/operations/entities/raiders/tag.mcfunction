### Tag illagers based on if they are actually raiding
## As: Knight
## From: operations/delay/20

## Tag raiders

#Tag Vex separately, since it won't have RaidId
tag @s[type=vex,predicate=!classes:entities/vexraider] add cl.t.

#If Illager has RaidId, it is raiding. Tag it and bag it.
execute if data entity @s RaidId run tag @s add cl.t.Raider

#If Illager is missing RaidId, they aren't raiding. Tag them to avoid re-iteration.
execute unless data entity @s[tag=!cl.t.Raider] RaidId run tag @s add cl.t.NotRaider
