function classes:main/mana_system/mage/cast
scoreboard players set @s cl.Cooldown 20
scoreboard players set @s cl.e.DeepFreeze 300
scoreboard players remove @s cl.Mana 6
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Deep Freeze!","bold":true,"color":"#0096FF"}]
