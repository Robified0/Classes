#Runs when player tames an animal.

#Tag the animal to avoid being hit by spells
execute at @s as @e[type=#classes:ownable,tag=!cl.t.Owned,distance=..10] if data entity @s Owner run tag @s add cl.t.Owned
