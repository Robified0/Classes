#Runs when player tames an animal.

execute at @s as @e[type=iron_golem,tag=!cl.Owned,distance=..10,nbt={PlayerCreated:1b}] run tag @s add cl.Owned
advancement revoke @s only classes:hiredhelp
