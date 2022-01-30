#Spell Cast Notification
execute if entity @s[scores={cl.Mana=1..,cl.e.Shield=0}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" is casting","color":"green"},{"text":" Shield!","bold":true,"color":"light_purple"}]

execute if entity @s[scores={cl.Mana=1..,cl.e.Shield=0}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.5 2

#Spell Handling
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s cl.e.Shield 10

#Handle Mana drain over time. Set cl.e.Shield.m=# to a higher number to slow down drain rate.
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players add @s cl.e.Shield.m 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players remove @s[scores={cl.e.Shield.m=5}] cl.Mana 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s[scores={cl.e.Shield.m=5..}] cl.e.Shield.m 0

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/magic/shield
