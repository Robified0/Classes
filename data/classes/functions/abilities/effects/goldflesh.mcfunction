execute if entity @s[scores={cl.e.GoldFlesh=1..}] run particle block gold_block ~ ~ ~ 0.1 0.7 0.1 0.1 2 normal
execute if entity @s[scores={cl.e.GoldFlesh=1..}] run scoreboard players remove @s cl.e.GoldFlesh 1
execute if entity @s[scores={cl.e.GoldFlesh=..0}] run attribute @s minecraft:generic.armor base set 0
execute if entity @s[scores={cl.e.GoldFlesh=..0}] run tellraw @s ["",{"text":"\u2734 ","color":"light_purple"},{"text":"Gold Flesh ended.","italic":true,"color":"white"}]
execute if entity @s[scores={cl.e.GoldFlesh=..0}] run scoreboard players reset @s cl.e.GoldFlesh
