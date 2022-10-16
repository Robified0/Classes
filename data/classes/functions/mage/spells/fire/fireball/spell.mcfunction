#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Particles
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
particle minecraft:small_flame ~ ~ ~ 0.3 1 0.3 0.08 50 force

# Summon marker at 0 0 0 to get motion
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^1.5 {Tags:["cl.Fireball.direction"]}

# Summon snowball with marker riding (for ground-hit detection)
summon snowball ^ ^1.5 ^1 {HasVisualFire:1b,Tags:["cl.spell.Fireball"],Passengers:[{id:"minecraft:marker",Tags:["cl.spell.Fireball.rider","cl.r.customDamage"]}],Item:{id:"minecraft:fire_charge",Count:1b}}

# Copy over data
data modify entity @e[type=snowball,tag=cl.spell.Fireball,limit=1] Motion set from entity @e[type=marker,tag=cl.Fireball.direction,limit=1] Pos

# Untag, kill first marker summoned
tag @e[type=snowball,tag=cl.spell.Fireball] remove cl.spell.Fireball
kill @e[tag=cl.Fireball.direction]

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Bed of Coals!","bold":true,"color":"#FF3034"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 6
