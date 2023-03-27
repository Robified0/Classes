#Kill any old block displays
kill @e[type=block_display,tag=cl.e.FireShield,limit=1,sort=nearest,distance=..1]

#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.FireShield 100

#Summon visual fire effect
summon block_display ~-0.5 ~ ~-0.5 {Tags:["cl.e.FireShield"],brightness:{sky:15,block:15},block_state:{Name:"minecraft:fire"}}

#Give Effect
effect give @s minecraft:fire_resistance 5 0 false

#Tag spell type
tag @s add cl.spell.casted.fire

#Cast Spell Sound Effects
function classes:main/mana_system/cast

#Particle effect
particle flame ~ ~ ~ 0.5 0.5 0.5 0.03 100 normal

#Summon the markers
execute as @e[tag=cl.t.FireShield,tag=cl.t.summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=cl.t.FireShield,sort=nearest,limit=1] cl.summonCount 1
summon marker ~ ~ ~ {Tags:["cl.t.FireShield","cl.t.sphere","cl.t.ball1","cl.t.summoned"]}
scoreboard players set @e[type=marker,tag=cl.t.FireShield,limit=1,sort=nearest] cl.summonCount 100

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.204.name","bold":true,"color":"#FF3034"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
