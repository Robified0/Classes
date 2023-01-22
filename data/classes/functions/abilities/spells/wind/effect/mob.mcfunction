#Make them face the player
tp @s ~ ~ ~ facing entity @p

#Facing east
execute if entity @s[y_rotation=-135..-45] run data merge entity @s {Motion:[-1.0d, 0.7d, 0.0d]}
#Facing west
execute if entity @s[y_rotation=45..135] run data merge entity @s {Motion:[1.0d, 0.7d, 0.0d]}
#Facing north
execute if entity @s[y_rotation=-179.99..-135] run data merge entity @s {Motion:[0.0d, 0.7d, 1.0d]}
execute if entity @s[y_rotation=135..179.99] run data merge entity @s {Motion:[0.0d, 0.7d, 1.0d]}
#Facing south
execute if entity @s[y_rotation=-45..45] run data merge entity @s {Motion:[0.0d, 0.7d, -1.0d]}
