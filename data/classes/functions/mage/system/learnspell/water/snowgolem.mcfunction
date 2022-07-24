#Grant the spell
advancement grant @s only classes:mage/learnspell/water/snowgolem

#Audio feedback
playsound minecraft:entity.boat.paddle_water player @s ~ ~ ~ 0.5 0.6

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Summon Snow Golem.","color":"blue"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
