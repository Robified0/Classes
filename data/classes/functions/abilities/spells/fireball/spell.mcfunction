#Tag spell type
tag @s add cl.spell.casted.fire

#Cast Spell Sound Effect
function classes:main/mana_system/cast

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
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.203.name","bold":true,"color":"#FF3034"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 6
