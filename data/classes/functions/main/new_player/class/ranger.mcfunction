## Set up Ranger stats

#Get rid of Class selection book
clear @s minecraft:written_book{cl.item.classselect:1b}

function classes:ranger/stats/main

##Give Bow & Arrows
give @s bow
give @s arrow 40

#Reenable the gamerule
execute if score #cl.pref cl.track.commandFeedback matches 1 run gamerule sendCommandFeedback true
