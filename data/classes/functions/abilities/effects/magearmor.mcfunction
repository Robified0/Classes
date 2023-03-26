execute if entity @s[scores={cl.e.MageArmor=1..}] run particle witch ~ ~ ~ 0.1 0.1 0.1 10 2 normal
execute if entity @s[scores={cl.e.MageArmor=1..}] run scoreboard players remove @s cl.e.MageArmor 1
execute if entity @s[scores={cl.e.MageArmor=..0}] run attribute @s minecraft:generic.armor base set 0
execute if entity @s[scores={cl.e.MageArmor=..0}] run tellraw @s ["",{"text":"\u2734 ","color":"light_purple"},{"translate":"spell.classes.605.name","italic":true,"color":"white"},{"translate":"chat.classes.spell.ended","italic":true,"color":"white"}]
execute if entity @s[scores={cl.e.MageArmor=..0}] run scoreboard players reset @s cl.e.MageArmor
