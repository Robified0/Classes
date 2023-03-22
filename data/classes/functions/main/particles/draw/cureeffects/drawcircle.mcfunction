particle wax_off ^ ^ ^5 0 0 0 1 3 force
particle happy_villager ^3 ^ ^4.8 0 0 0 1 3 force
tp @s ~ ~ ~ ~10 ~
execute unless entity @s[y_rotation=0..9] at @s run function classes:main/particles/draw/cureeffects/drawcircle
kill @s
