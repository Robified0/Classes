###Process scores for mobs hit by spell (replicating killed_by_player behaviour) (main)
## Executing as entities who have score

scoreboard players remove @s[scores={cl.HitBySpell=1..}] cl.HitBySpell 1
scoreboard players reset @s[scores={cl.HitBySpell=..0}] cl.HitBySpell
