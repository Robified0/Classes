#Not Enough Mana
execute if entity @s[scores={cl.Mana=..4}] run function classes:mage/mana/nomana

#Summon AEC
execute if entity @s[scores={cl.Mana=5..}] at @s as @e[tag=WindWard,tag=summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=WindWard,sort=nearest,limit=1] cl.summonCount 1
execute if entity @s[scores={cl.Mana=5..}] at @s as @e[tag=WindWardSphere,tag=summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=WindWardSphere,sort=nearest,limit=2] cl.summonCount 1
execute as @s[scores={cl.Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["WindWard","summoned"]}
execute as @s[scores={cl.Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["WindWardSphere","sphere","ball2","summoned"]}
execute as @s[scores={cl.Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["WindWardSphere","sphere","ball1","summoned"]}
execute as @s[scores={cl.Mana=5..}] run scoreboard players set @s cl.summonCount 400
execute as @s[scores={cl.Mana=5..}] run scoreboard players set @e[type=marker,tag=WindWard,limit=1,sort=nearest] cl.summonCount 400
execute as @s[scores={cl.Mana=5..}] run scoreboard players set @e[type=marker,tag=WindWardSphere,limit=2,sort=nearest] cl.summonCount 400

#Particles
execute as @a[scores={cl.Mana=5..}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
execute if entity @s[scores={cl.Mana=5..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=5..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=5..}] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5 1

#Spell Cast Notification
execute as @s[scores={cl.Mana=5..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Wind Ward!","bold":true,"color":"#FFFF80"}]

#Cooldown
execute as @s[scores={cl.Mana=5..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=5..}] run scoreboard players remove @s cl.Mana 5
