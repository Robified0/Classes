#Spell Cast Notification - checks for score to stop spam.
execute if entity @s[scores={cl.e.Shield=0}] run tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.casting","color":"green"},{"translate":"spell.classes.602.name","bold":true,"color":"light_purple"},{"text":" !","color":"green"}]
execute if entity @s[scores={cl.e.Shield=0}] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.5 2

#Spell Handling
scoreboard players set @s cl.e.Shield 10

#Handle Mana drain over time. Set cl.e.Shield.m=# to a higher number to slow down drain rate.
scoreboard players add @s cl.e.Shield.m 1
scoreboard players remove @s[scores={cl.e.Shield.m=2}] cl.Mana 1
scoreboard players set @s[scores={cl.e.Shield.m=2..}] cl.e.Shield.m 0
