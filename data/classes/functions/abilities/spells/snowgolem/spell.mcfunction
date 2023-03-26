##Executing as player casting spell (abilities/spells/snowgolem/cast)

#Summon AEC
execute as @e[type=#classes:summonable,tag=cl.t.summoned,sort=nearest] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[type=#classes:summonable,tag=cl.t.summoned,sort=nearest,limit=1] cl.summonCount 1
summon snow_golem ~ ~ ~ {DeathLootTable:"none",Pumpkin:0b,Tags:["cl.t.summoned"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:199980,ShowParticles:0b}]}
scoreboard players set @e[type=snow_golem,tag=cl.t.summoned,limit=1,sort=nearest] cl.summonCount 600
scoreboard players set @s cl.summonCount 600

#Play sound
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.2 2
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1.5

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast
playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.1 2
execute at @e[type=snow_golem,tag=cl.t.summoned,scores={cl.summonCount=600}] run playsound minecraft:entity.snow_golem.death player @a ~ ~ ~ 0.3 2

#Particles
particle minecraft:enchant ~ ~ ~ 1 1 1 1 40 normal
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute at @e[type=snow_golem,tag=cl.t.summoned,scores={cl.summonCount=600}] run particle minecraft:witch ~ ~ ~ 0.1 1 0.1 0.1 100 force
execute at @e[type=snow_golem,tag=cl.t.summoned,scores={cl.summonCount=600}] run particle minecraft:enchant ~ ~ ~ 0.6 0.4 0.6 5 100 force

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.303.name","bold":true,"color":"blue"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
