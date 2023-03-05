##Running through root/main

#Mute barrel sounds
function classes:blocks/barrelsound

#Reset book template score
scoreboard players reset @s cl.book.template

#Handle destruction
execute if block ~ ~ ~ barrel[open=true] run function classes:blocks/magictable/open

#If barrel closed, give back items
execute if block ~ ~ ~ barrel[open=false]{Items:[{}]} run function classes:blocks/magictable/closed

#Stop Hoppers
execute if block ~ ~-1 ~ hopper[enabled=true] run setblock ~ ~-1 ~ minecraft:hopper[enabled=false]

#Handle destruction
execute unless block ~ ~ ~ barrel[facing=up] run function classes:blocks/magictable/destroy
