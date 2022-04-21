#Process loot_tables before damage
function classes:main/loot_table/main
data merge entity @s {Fire:100}
execute as @s[type=creeper] run function classes:entities/vanilla/creeper/fire
effect give @s[type=!#classes:undead] instant_damage 1 1 false
effect give @s[type=#classes:undead] instant_health 1 1 false
particle flame ~ ~0.3 ~ 0.1 0.5 0.1 0.1 100 force

#Make Mob Angry
execute if entity @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Sound effect
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Flame Burst!","bold":true,"color":"#FF3034"}]
