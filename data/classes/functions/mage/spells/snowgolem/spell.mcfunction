#Not Enough Mana
execute if entity @s[scores={cl.Mana=..3}] run function classes:main/mana_system/nomana

#Summon AEC
execute if entity @s[scores={cl.Mana=4..}] at @s as @e[tag=summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=summoned,sort=nearest,limit=1] cl.summonCount 1
execute if entity @s[scores={cl.Mana=4..}] run summon snow_golem ~ ~ ~ {DeathLootTable:"none",Pumpkin:0b,Tags:["summoned"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:199980,ShowParticles:0b}]}
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @e[type=snow_golem,tag=summoned,limit=1,sort=nearest] cl.summonCount 600
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.summonCount 600
execute if entity @s[scores={cl.Mana=4..}] as @e[type=snow_golem,tag=summoned] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 1 1 1 2 30 normal

#Play sound
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.1 2
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.1 2
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:entity.snow_golem.death player @a ~ ~ ~ 0.8 2

#Particles
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 40 normal
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute if entity @s[scores={cl.Mana=4..}] at @e[type=snow_golem,tag=summoned,scores={cl.summonCount=600}] run particle minecraft:witch ~ ~ ~ 0.1 1 0.1 0.1 100 force
execute if entity @s[scores={cl.Mana=4..}] at @e[type=snow_golem,tag=summoned,scores={cl.summonCount=600}] run particle minecraft:enchant ~ ~ ~ 0.6 0.4 0.6 5 100 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Summon Snow Golem!","bold":true,"color":"#0096FF"}]

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4
