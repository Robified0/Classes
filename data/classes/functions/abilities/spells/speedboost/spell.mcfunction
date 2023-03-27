#Add score for tracking
scoreboard players set @a[distance=..10,limit=5,sort=random] cl.e.SpeedBoost 300
execute as @a[scores={cl.e.SpeedBoost=300}] run effect give @s minecraft:speed 15 0 false

#Tag spell type
tag @s add cl.spell.casted.holy

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.707.name","bold":true,"color":"green"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 6
