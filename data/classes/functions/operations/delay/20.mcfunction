### Runs commands here once every second (20 ticks)

#Run function when #cl.t.20Tick score hits 20 (operations/delay/main)

execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[0] run function classes:crafting/magictable/recipes/main

#Reset score
scoreboard players set #cl.t.20Tick cl.t.Tick 0
