#Grant the spell
advancement grant @s only classes:mage/learnspell/magic/invisibility

#Playsound Effect
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 0.5 1.2

#Display Message
title @s times 20 100 20
title @s subtitle ["",{"text":"You have learned "},{"text":"Invisibility.","color":"light_purple"}]
title @s title {"text":""}

#Clear item
item replace entity @s weapon.mainhand with minecraft:air
