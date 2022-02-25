###Runs commands based on current tick time

##Increase scoreboards
scoreboard players add #cl.t.10Tick cl.t.Tick 1
scoreboard players add #cl.t.20Tick cl.t.Tick 1

#1 second
execute if score #cl.t.10Tick cl.t.Tick matches 10 run function classes:operations/delay/10

#1 second
execute if score #cl.t.20Tick cl.t.Tick matches 20 run function classes:operations/delay/20
