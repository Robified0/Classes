#Add score for tracking
summon marker ~ ~1 ~ {Tags:["cl.t.HealCircle","cl.t.summoned"]}
execute as @e[type=marker,tag=cl.t.HealCircle,sort=nearest,limit=1] at @s run function classes:main/particles/draw/healcircle/drawcircle

#Do the healing
execute if entity @a[distance=..5] as @a[distance=..5] at @s run function classes:abilities/spells/healcircle/effects/player
execute as @e[type=#classes:passive,distance=..5,predicate=classes:entities/angry,tag=!cl.t.summoned,tag=!cl.t.Owned] at @s run function classes:abilities/spells/healcircle/effects/mob
execute as @e[type=#classes:passive,distance=..5,tag=cl.t.Owned] at @s run function classes:abilities/spells/healcircle/effects/mob
execute if entity @e[type=#classes:undead,distance=..5] as @e[type=#classes:undead,distance=..5] run function classes:abilities/spells/healcircle/effects/undead

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Particles
particle wax_off ~ ~ ~ 4 0.1 4 0.25 200 force
particle happy_villager ~ ~ ~ 4 0.1 4 0.25 200 force

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Healing Circle!","bold":true,"color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
