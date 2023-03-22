#Executing as marker inside Rune Table (main/delay/20)


#Mute barrel sounds
function classes:blocks/barrelsound

#If barrel closed, give back items
execute if block ~ ~ ~ barrel[open=false]{Items:[{}]} run function classes:blocks/runetable/closed

#Run if barrel is open
execute if block ~ ~ ~ barrel[open=true] run function classes:blocks/runetable/open

#Stop Hoppers
execute if block ~ ~-1 ~ hopper[enabled=true] run setblock ~ ~-1 ~ minecraft:hopper[enabled=false]

execute unless block ~ ~ ~ barrel[facing=up] run function classes:blocks/runetable/placing/destroy
