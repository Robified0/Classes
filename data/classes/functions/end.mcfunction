#Running in tick.json, running last to reset scoreboards.

#Resets scoreboards
scoreboard players remove @a[scores={cl.Cooldown=1..}] cl.Cooldown 1
scoreboard players set @a cl.rightClick 0
scoreboard players set @a cl.Sneaking 0
scoreboard players set @a cl.Moved 0
scoreboard players set @e[type=player] cl.o.DeathCount 0
