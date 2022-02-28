#Runs when player tames an animal.

#Tag the animal to avoid being hit by spells
execute at @s as @e[type=#classes:ownable,tag=!cl.t.Owned,distance=..10] if data entity @s Owner run tag @s add cl.t.Owned

#Number the animal if the tamer is a Ranger for potion effects.

execute at @s[scores={cl.Class=2}] as @e[type=#classes:ranger/canown,tag=cl.t.Owned,distance=..10] unless score @s cl.t.RangerID matches 1.. run scoreboard players operation @s cl.t.RangerID = @a[scores={cl.Class=2},advancements={classes:tameanimal=true}] cl.t.RangerID

#Revoke advancement to allow re-triggering
advancement revoke @s only classes:tameanimal
