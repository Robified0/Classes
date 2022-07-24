#Grant the spell
advancement grant @s only classes:mage/learnspell/water/deepfreeze

#Audio feedback
playsound minecraft:entity.boat.paddle_water player @s ~ ~ ~ 0.5 0.6

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Deep Freeze.","color":"blue"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
