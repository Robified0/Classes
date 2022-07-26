#Grant the spell
advancement grant @s only classes:healer/learnspell/healing/healcircle

#Playsound Effect
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Heal Circle.","color":"green"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
