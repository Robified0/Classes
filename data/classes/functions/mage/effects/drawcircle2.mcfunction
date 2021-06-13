particle dust 1 1 1 1 ^ ^ ^3.3 0 0 0 0 1
tp @s ~ ~ ~ ~20 ~
execute unless entity @s[y_rotation=0..19] at @s run function classes:mage/effects/drawcircle
