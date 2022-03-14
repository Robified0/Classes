execute if entity @s[scores={cl.i.ManaPtnUseOff=1}] run item replace entity @s weapon.offhand with minecraft:glass_bottle

execute if entity @s[scores={cl.i.ManaPtnUseOff=2}] run item replace entity @s weapon.offhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUseOff=2}] run item modify entity @s weapon.offhand classes:items/manapotion/1use

execute if entity @s[scores={cl.i.ManaPtnUseOff=3}] run item replace entity @s weapon.offhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUseOff=3}] run item modify entity @s weapon.offhand classes:items/manapotion/2use

execute if entity @s[scores={cl.i.ManaPtnUseOff=4}] run item replace entity @s weapon.offhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUseOff=4}] run item modify entity @s weapon.offhand classes:items/manapotion/3use

execute if entity @s[scores={cl.i.ManaPtnUseOff=5}] run item replace entity @s weapon.offhand with minecraft:potion
execute if entity @s[scores={cl.i.ManaPtnUseOff=5}] run item modify entity @s weapon.offhand classes:items/manapotion/4use
