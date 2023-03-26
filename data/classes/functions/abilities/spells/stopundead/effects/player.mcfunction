function classes:main/mana_system/healer/cast
scoreboard players set @s cl.e.StopUndead 200
scoreboard players set @s cl.Cooldown 20
scoreboard players remove @s cl.Mana 6

tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.712.name","bold":true,"color":"green"},{"text":" !","color":"green"}]
