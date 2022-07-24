#Grant the spell
advancement grant @s only classes:mage/learnspell/earth/irongolem

#Playsound Effect
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Summon Iron Golem.","color":"green"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
