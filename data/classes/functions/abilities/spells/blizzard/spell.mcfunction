#Spell Cast Notification
execute if entity @s[scores={cl.e.Blizzard=10}] run tag @s add cl.s.Blizzard


#Spell Cast Notification
execute if entity @s[scores={cl.e.Blizzard=0}] run tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" is casting","color":"green"},{"text":" Blizzard!","bold":true,"color":"#0096FF"}]

#levitate
execute if entity @s[scores={cl.e.Blizzard=1..}] unless block ~ ~-1 ~ #classes:air run effect give @s minecraft:levitation 1 0 true
execute if entity @s[scores={cl.e.Blizzard=1..}] run effect give @s minecraft:slow_falling 1 0 true

#Sound Effect
execute if entity @s[scores={cl.e.Blizzard=1..}] run playsound minecraft:entity.horse.breathe player @a[distance=..10] ~ ~ ~ 0.8 0.1 0.3
execute if entity @s[scores={cl.e.Blizzard=1..}] run playsound minecraft:block.amethyst_block.chime player @a[distance=..10] ~ ~ ~ 0.8 0.1 0.3
execute if entity @s[scores={cl.e.Blizzard=1..}] run particle minecraft:snowflake ~ ~ ~ 5 5 5 0.40 200 force
execute if entity @s[scores={cl.e.Blizzard=1..}] run particle minecraft:white_ash ~ ~0.5 ~ 5 5 5 0.1 100 force

#Give Slowness
execute if entity @s[scores={cl.e.Blizzard=1..}] run effect give @e[type=!#classes:nontarget,type=!player,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..10] minecraft:slowness 1 3

#Freeze their butts
execute if entity @s[scores={cl.e.Blizzard=1..}] as @e[type=!#classes:nontarget,type=!player,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..9] at @s run data merge entity @s {TicksFrozen:250}

#Damage entities in range
execute if entity @s[scores={cl.e.Blizzard=1..}] as @e[type=!#classes:nontarget,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..10] run damage @s 1 minecraft:freeze by @p[scores={cl.e.Blizzard=1..}]

#Spell Handling
scoreboard players set @s cl.e.Blizzard 10

#Handle Mana drain over time. Set cl.e.Blizzard.m=# in the selectors to a higher number to slow down drain rate.
scoreboard players add @s cl.e.Blizzard.m 1
scoreboard players remove @s[scores={cl.e.Blizzard.m=4}] cl.Mana 1
scoreboard players set @s[scores={cl.e.Blizzard.m=4..}] cl.e.Blizzard.m 0
scoreboard players set @s cl.ManaRegenSec 1
