## Let player know they already know the spell.

#Grant XP - credit to Cyanadon for the idea
xp add @s 100 points

#Display title
title @s times 5 50 5
title @s subtitle {"text":"You already know this spell, but gain 100 XP from it.","italic":true,"color":"red"}
title @s title {"text":""}

item replace entity @s weapon.mainhand with minecraft:air
