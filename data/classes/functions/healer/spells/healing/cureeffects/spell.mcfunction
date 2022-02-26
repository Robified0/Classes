#Add score for tracking
summon marker ~ ~1 ~ {Tags:["cl.t.CureEffects","cl.t.summoned"]}
execute as @e[type=marker,tag=cl.t.CureEffects,sort=nearest] at @s run function classes:operations/particles/draw/cureeffects/drawcircle
scoreboard players set @a[distance=..5,limit=5,sort=random] cl.e.CureEffects 600

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2

#Particles
particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Cure Effects!","bold":true,"color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
