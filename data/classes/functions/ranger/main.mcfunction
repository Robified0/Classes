execute as @a[scores={cl.Class=2,cl.Sneaking=1..}] run function classes:ranger/system/arrowpickup
execute as @a[scores={cl.Class=2},tag=!cl.Ranger] run function classes:ranger/system/recipeunlockr

#Handle removal of recipes specific to Ranger from other classes
execute as @a[scores={cl.Class=2}] unless score @s cl.Class matches 2 run recipe take @s classes:ranger/saddle
execute as @a[scores={cl.Class=2}] unless score @s cl.Class matches 2 run tag @s remove cl.Ranger

#
execute as @a[scores={cl.Class=2}] unless score @s cl.t.RangerID matches 1.. run function classes:ranger/stats/id


execute at @a[scores={cl.Class=2,cl.i.usedPotion=1..}] as @e[distance=..15,type=wolf,tag=cl.t.Owned] at @s run function classes:ranger/system/potion/checkowner
