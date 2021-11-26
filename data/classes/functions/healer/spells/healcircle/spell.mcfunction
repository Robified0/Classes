#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:main/mana_system/nomana

#Add score for tracking
execute if entity @s[scores={cl.Mana=3..}] at @s run summon marker ~ ~1 ~ {Tags:["HealCircle","summoned"]}
execute if entity @s[scores={cl.Mana=3..}] at @s as @e[type=marker,tag=HealCircle,sort=nearest] at @s run function classes:operations/particles/draw/healcircle/drawcircle
execute if entity @s[scores={cl.Mana=3..}] at @s run effect give @a[distance=..5] instant_health 1 1 true
execute if entity @s[scores={cl.Mana=3..}] at @s run effect give @e[type=!player,distance=..5,tag=summoned] instant_health 1 1 true
execute if entity @s[scores={cl.Mana=3..}] at @s run effect give @e[type=!player,distance=..5,tag=cl.Owned] instant_health 1 1 true
execute if entity @s[scores={cl.Mana=3..}] at @s run scoreboard players set @e[type=#classes:undead,distance=..5] cl.HitBySpell 100
execute if entity @s[scores={cl.Mana=3..}] at @s as @e[type=#classes:undead,scores={cl.HitBySpell=100},distance=..5] run function classes:main/loot_table/main
execute if entity @s[scores={cl.Mana=3..}] at @s run effect give @e[type=#classes:undead,distance=..5] instant_health 2 1 true

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:healer/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.08 50 force
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=3..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Healing Circle!","bold":true,"color":"green"}]

#Cooldown
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players remove @s cl.Mana 3

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/healcircle
