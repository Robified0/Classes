#Spell Cast Notification
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=0}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" is casting","color":"green"},{"text":" Blizzard!","bold":true,"color":"light_purple"}]

#levitate
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=1..}] at @s unless block ~ ~-1 ~ #classes:air run effect give @s minecraft:levitation 1 0 true
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=1..}] at @s run effect give @s minecraft:slow_falling 1 0 true

#Sound Effect
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=1..}] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5 0.1 0.3
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=1..}] at @s run particle minecraft:snowflake ~ ~ ~ 5 5 5 0.40 200 force

#Give Slowness
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=1..}] at @s run effect give @e[type=!#classes:nontarget,type=!player,tag=!summoned,tag=!cl.Owned,distance=..10] minecraft:slowness 1 3
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=6}] at @s as @e[type=!#classes:nontarget,type=!player,tag=!summoned,tag=!cl.Owned,distance=..10] at @s if block ^ ^1 ^-1 #classes:air run tp @s ^ ^0.5 ^-0.5 facing entity @p[scores={cl.e.Blizzard=6}]

#Damage entities in range
execute if entity @s[scores={cl.Mana=1..,cl.e.Blizzard=1..}] at @s run effect give @e[type=!#classes:nontarget,type=!player,tag=!cl.Owned,distance=..10] minecraft:wither 1 4

#Spell Handling
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s cl.e.Blizzard 10

#Handle Mana drain over time. Set cl.e.Blizzard.m=# to a higher number to slow down drain rate.
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players add @s cl.e.Blizzard.m 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players remove @s[scores={cl.e.Blizzard.m=4}] cl.Mana 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s[scores={cl.e.Blizzard.m=4..}] cl.e.Blizzard.m 0
