#Grant the spell
advancement grant @s only classes:mage/learnspell/fire/fireshield

#Audio feedback
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 0.6

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Fire Shield.","color":"red"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
