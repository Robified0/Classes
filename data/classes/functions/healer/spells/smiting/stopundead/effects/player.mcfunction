function classes:main/mana_system/healer/cast
scoreboard players set @s cl.Cooldown 20
scoreboard players remove @s cl.Mana 6

tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Stop Undead!","bold":true,"color":"green"}]
