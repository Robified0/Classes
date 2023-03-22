###Runs commands based on current tick time (minecraft/tag/tick)

##Increase scoreboards (per Tick)
scoreboard players add #cl.t.5Tick cl.t.Tick 1
scoreboard players add #cl.t.10Tick cl.t.Tick 1
scoreboard players add #cl.t.20Tick cl.t.Tick 1
scoreboard players add #cl.t.10Sec cl.t.Tick 1

#Quarter second
execute if score #cl.t.5Tick cl.t.Tick matches 5 run function classes:main/delay/5

#Half second
execute if score #cl.t.10Tick cl.t.Tick matches 10 run function classes:main/delay/10

#1 second
execute if score #cl.t.20Tick cl.t.Tick matches 20 run function classes:main/delay/20

#10 Seconds
execute if score #cl.t.10Sec cl.t.Tick matches 200 run function classes:main/delay/10s
