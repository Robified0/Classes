###Runs when/as player creates a golem

#Tag player-created Iron Golems within 10 blocks who are within 10 blocks, and who haven't been tagged
execute at @s as @e[type=iron_golem,tag=!cl.t.Owned,distance=..10,nbt={PlayerCreated:1b}] run tag @s add cl.t.Owned
execute at @s as @e[type=snow_golem,tag=!cl.t.Owned,distance=..10,nbt={PlayerCreated:1b}] run tag @s add cl.t.Owned

#Revoke advancement to retrigger this function
advancement revoke @s only classes:hiredhelp
