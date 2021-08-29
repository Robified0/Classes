execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s cl.e.Shield 10
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players add @s cl.e.Shield.m 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players remove @s[scores={cl.e.Shield.m=5}] cl.Mana 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s[scores={cl.e.Shield.m=5..}] cl.e.Shield.m 0
