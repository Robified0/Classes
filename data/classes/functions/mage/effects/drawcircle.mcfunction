particle minecraft:end_rod ^ ^ ^3 0 0 0 0 1
tp @s ~ ~ ~ ~10 ~
execute unless entity @s[y_rotation=0..9] at @s run function classes:mage/effects/drawcircle
