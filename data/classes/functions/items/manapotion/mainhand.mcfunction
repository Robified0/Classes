execute if entity @s[scores={cl.i.ManaPtnUse=1}] run item replace entity @s weapon.mainhand with minecraft:glass_bottle

execute if entity @s[scores={cl.i.ManaPtnUse=2}] run item replace entity @s weapon.mainhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUse=2}] run item modify entity @s weapon.mainhand classes:items/manapotion/1use

execute if entity @s[scores={cl.i.ManaPtnUse=3}] run item replace entity @s weapon.mainhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUse=3}] run item modify entity @s weapon.mainhand classes:items/manapotion/2use

execute if entity @s[scores={cl.i.ManaPtnUse=4}] run item replace entity @s weapon.mainhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUse=4}] run item modify entity @s weapon.mainhand classes:items/manapotion/3use

execute if entity @s[scores={cl.i.ManaPtnUse=5}] run item replace entity @s weapon.mainhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUse=5}] run item modify entity @s weapon.mainhand classes:items/manapotion/4use
