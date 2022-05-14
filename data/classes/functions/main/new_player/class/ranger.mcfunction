## Set up Ranger stats

function classes:ranger/stats/main

##Give Bow & Arrows
give @s bow
give @s arrow 40

#Reenable the gamerule
execute if score #cl.pref cl.track.commandFeedback matches 1 run gamerule sendCommandFeedback true
