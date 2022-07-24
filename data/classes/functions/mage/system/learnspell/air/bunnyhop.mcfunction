#Grant the spell
advancement grant @s only classes:mage/learnspell/air/bunnyhop

#Audio feedback
playsound minecraft:entity.horse.breathe player @s ~ ~ ~ 1 2

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Bunny Hop.","color":"gold"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
