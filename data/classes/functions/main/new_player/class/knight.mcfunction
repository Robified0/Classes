## Set up Knight stats

function classes:knight/stats/main

#Give basic equipment
give @s minecraft:iron_sword
give @s minecraft:shield

#Heal Knight's extra (empty) health on selection
effect give @s minecraft:instant_health 1 5 true

#Reenable the gamerule
execute if score #cl.pref cl.track.commandFeedback matches 1 run gamerule sendCommandFeedback true
