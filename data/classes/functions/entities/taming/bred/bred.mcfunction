#Runs when player tames an animal.

#Tag the animal to avoid being hit by spells
execute at @s as @e[type=#classes:ownable,tag=!cl.t.Owned,distance=..10] if data entity @s Owner run tag @s add cl.t.Owned

#Tag animal as not a rangers, if the tamer is not a Ranger (prevents tagging them as not a Rangers down the line).
execute unless entity @s[scores={cl.Class=2}] at @s as @e[type=#classes:ranger/canown,tag=cl.t.Owned,tag=!cl.t.Rangers,distance=..10] run tag @s add cl.t.NotRangers

#Tag animal as a rangers, if the tamer is a Ranger (prevents tagging them as not a Rangers down the line).
execute if entity @s[scores={cl.Class=2}] at @s as @e[type=#classes:ranger/canown,tag=cl.t.Owned,distance=..10] run tag @s add cl.t.Rangers

#If entity is a Rangers, and has not been assigned an ID already, give them one (for potion tracking)
execute at @s[scores={cl.Class=2}] as @e[type=#classes:ranger/canown,tag=cl.t.Owned,tag=cl.t.Rangers,distance=..10] unless score @s cl.t.RangerID matches 1.. run function classes:ranger/system/taming/apply/bred

#Revoke advancement to allow re-triggering
execute if entity @s[advancements={classes:bredanimal=true}] run advancement revoke @s only classes:bredanimal
