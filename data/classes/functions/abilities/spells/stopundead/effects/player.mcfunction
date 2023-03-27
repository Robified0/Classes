#Tag spell type
tag @s add cl.spell.casted.holy

#Run particles & sound effects
function classes:main/mana_system/cast

#Set scoreboards
scoreboard players set @s cl.e.StopUndead 200
scoreboard players set @s cl.Cooldown 20
scoreboard players remove @s cl.Mana 6

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.712.name","bold":true,"color":"green"},{"text":" !","color":"green"}]
