execute at @s[scores={cl.e.Blizzard=1}] run kill @e[type=marker,tag=cl.Blizzard,sort=nearest,limit=1]
scoreboard players remove @s[scores={cl.e.Blizzard=1..}] cl.e.Blizzard 1
