#Not Enough Mana
execute unless entity @s[scores={cl.Mana=10..}] run function classes:main/mana_system/nomana

#Summon AEC
execute if entity @s[scores={cl.Mana=10..}] at @s as @e[tag=summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=summoned,sort=nearest,limit=1] cl.summonCount 1
execute if entity @s[scores={cl.Mana=10..}] at @s run summon iron_golem ~ ~ ~ {DeathLootTable:"none",PlayerCreated:1b,Tags:["summoned"]}
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @e[type=iron_golem,tag=summoned,limit=1,sort=nearest] cl.summonCount 600
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @s cl.summonCount 600
execute if entity @s[scores={cl.Mana=10..}] as @e[type=iron_golem,tag=summoned] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 1 1 1 2 30 normal

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=10..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=10..}] at @s run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.1 2
execute if entity @s[scores={cl.Mana=10..}] at @s run playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 0.8 2

#Particles
execute if entity @s[scores={cl.Mana=10..}] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 40 normal
execute if entity @s[scores={cl.Mana=10..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute if entity @s[scores={cl.Mana=10..}] at @e[type=iron_golem,tag=summoned,scores={cl.summonCount=600}] run particle minecraft:witch ~ ~ ~ 0.1 1 0.1 0.1 100 force
execute if entity @s[scores={cl.Mana=10..}] at @e[type=iron_golem,tag=summoned,scores={cl.summonCount=600}] run particle minecraft:enchant ~ ~ ~ 0.6 0.4 0.6 5 100 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=10..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Summon Iron Golem!","bold":true,"color":"#AAAAAA"}]

#Cooldown
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players remove @s cl.Mana 10

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/earth/irongolem
