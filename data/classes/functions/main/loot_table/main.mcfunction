#Handle scoreboard to time when last hit by player
scoreboard players remove @s[scores={cl.HitBySpell=1..}] cl.HitBySpell 1
scoreboard players reset @s[scores={cl.HitBySpell=..0}] cl.HitBySpell

### The mobs are split up to avoid adding to look up times, and mitigate command run per tick ###

#Hostile Mobs
execute if entity @s[type=#classes:lt_sort/hostile/a2h] run function classes:main/loot_table/hostile/a2h
execute if entity @s[type=#classes:lt_sort/hostile/i2s] run function classes:main/loot_table/hostile/i2s
execute if entity @s[type=#classes:lt_sort/hostile/t2z] run function classes:main/loot_table/hostile/t2z

#Passive Mobs
execute if entity @s[type=#classes:lt_sort/passive/a2h] run function classes:main/loot_table/passive/a2h
execute if entity @s[type=#classes:lt_sort/passive/i2s] run function classes:main/loot_table/passive/i2s
execute if entity @s[type=#classes:lt_sort/passive/t2z] run function classes:main/loot_table/passive/t2z

#Stop re-iterating to prevent lag
tag @s add cl.LTAdjusted
