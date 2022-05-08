#Arrow Pickup if Ranger is sneaking
execute as @a[scores={cl.Class=2,cl.track.sneak=1..}] run function classes:ranger/system/arrowpickup

#Unlock custom recipes
execute as @a[scores={cl.Class=2},tag=!cl.Ranger] run function classes:ranger/system/recipeunlock

#Handle removal of recipes specific to Ranger from other classes
execute as @a[scores={cl.Class=2}] unless score @s cl.Class matches 2 run recipe take @s classes:ranger/saddle
execute as @a[scores={cl.Class=2}] unless score @s cl.Class matches 2 run tag @s remove cl.Ranger

#Give Ranger ID if one doesn't exist
execute as @a[scores={cl.Class=2}] unless score @s cl.t.RangerID matches 1.. run function classes:ranger/system/taming/id

#Check for arrows shot by Ranger
execute as @a[scores={cl.t.usedBow=1..,cl.Class=2},predicate=classes:ranger/bow/mainhand] at @s run function classes:ranger/stats/arrow

#Check Owner for Potion drinking, to apply to correct animals
execute at @a[scores={cl.Class=2,cl.i.usedPotion=1..}] as @e[distance=..15,type=wolf,tag=cl.t.Owned] at @s run function classes:ranger/system/potion/checkowner
