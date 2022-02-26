## Cast spell (executing as player who has enough mana) (healer/spells/buff/guard/cast)

#Summon AEC
execute as @e[tag=cl.t.Guard,tag=cl.t.summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=cl.t.Guard,sort=nearest,limit=1] cl.summonCount 1
execute as @e[tag=cl.t.GuardSphere,tag=cl.t.summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=cl.t.GuardSphere,sort=nearest,limit=2] cl.summonCount 1
summon marker ~ ~1 ~ {Tags:["cl.t.Guard","cl.t.summoned"]}
summon marker ~ ~1 ~ {Tags:["cl.t.GuardSphere","cl.t.sphere","cl.t.ball2","cl.t.summoned"]}
summon marker ~ ~1 ~ {Tags:["cl.t.GuardSphere","cl.t.sphere","cl.t.ball1","cl.t.summoned"]}
scoreboard players set @s cl.summonCount 400
scoreboard players set @e[type=marker,tag=cl.t.Guard,limit=1,sort=nearest] cl.summonCount 400
scoreboard players set @e[type=marker,tag=cl.t.GuardSphere,limit=2,sort=nearest] cl.summonCount 400

#Particles
particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.6 1.5

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Guard!","bold":true,"color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 8
