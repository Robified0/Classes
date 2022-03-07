### Runs commands here once every 10 seconds (200 ticks)

##Run functions below when #cl.t.10Sec score hits 5 (operations/delay/main)

# Ranger animal regen
execute as @a[scores={cl.Class=2}] at @s run function classes:ranger/system/healanimals/main

#Reset score
scoreboard players set #cl.t.10Sec cl.t.Tick 0
