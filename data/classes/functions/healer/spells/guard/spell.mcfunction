#Not Enough Mana
execute if entity @s[scores={cl.Mana=..4}] run function classes:main/mana_system/nomana

#Summon AEC
execute if entity @s[scores={cl.Mana=5..}] at @s as @e[tag=Guard,tag=summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=Guard,sort=nearest,limit=1] cl.summonCount 1
execute if entity @s[scores={cl.Mana=5..}] at @s as @e[tag=GuardSphere,tag=summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=GuardSphere,sort=nearest,limit=2] cl.summonCount 1
execute if entity @s[scores={cl.Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["Guard","summoned"]}
execute if entity @s[scores={cl.Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["GuardSphere","sphere","ball2","summoned"]}
execute if entity @s[scores={cl.Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["GuardSphere","sphere","ball1","summoned"]}
execute if entity @s[scores={cl.Mana=5..}] run scoreboard players set @s cl.summonCount 400
execute if entity @s[scores={cl.Mana=5..}] run scoreboard players set @e[type=marker,tag=Guard,limit=1,sort=nearest] cl.summonCount 400
execute if entity @s[scores={cl.Mana=5..}] run scoreboard players set @e[type=marker,tag=GuardSphere,limit=2,sort=nearest] cl.summonCount 400

#Particles
execute if entity @s[scores={cl.Mana=5..}] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=5..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=5..}] at @s run function classes:healer/spells/all/cast
execute if entity @s[scores={cl.Mana=5..}] at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.6 1.5

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=5..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Guard!","bold":true,"color":"green"}]

#Cooldown
execute if entity @s[scores={cl.Mana=5..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=5..}] run scoreboard players remove @s cl.Mana 5
