#Grant the spell
advancement grant @s only classes:mage/learnspell/earth/diamondflesh

#Playsound Effect
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Diamond Flesh.","color":"green"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
