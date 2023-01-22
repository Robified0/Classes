#Grant the spell and tag player
tag @s add cl.knowsSpell.Light
advancement grant @s only classes:healer/learnspell/smiting/light

#Playsound Effect
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Light.","color":"green"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
