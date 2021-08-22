#Resets scoreboards
scoreboard players remove @a[scores={cl.Cooldown=1..}] cl.Cooldown 1
scoreboard players set @a cl.rightClick 0
scoreboard players set @a cl.Sneaking 0
scoreboard players set @a cl.Moved 0

#Remove mob from cl.HitBySpell if score=0
scoreboard players reset @s[scores={cl.HitBySpell=..0}] cl.HitBySpell
