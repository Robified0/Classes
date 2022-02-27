execute as @a[scores={cl.Class=2,cl.Sneaking=1..},tag=!cl.Ranger] run function classes:ranger/effects/arrowpickup
execute as @a[scores={cl.Class=2},tag=!cl.Ranger] run function classes:ranger/system/recipeunlock
execute as @a[scores={cl.Class=2}] if entity @s[tag=!cl.Ranger] run tag @s add cl.Ranger

#Handle removal of recipes specific to Ranger from other classes
execute as @a[tag=cl.Ranger] unless score @s cl.Class matches 2 run recipe take @s classes:ranger/saddle
execute as @a[tag=cl.Ranger] unless score @s cl.Class matches 2 run tag @s remove cl.Ranger
