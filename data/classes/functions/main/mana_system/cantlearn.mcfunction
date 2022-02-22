#Tell player they have already learned the spell.

title @s times 0 20 5
execute unless score @s cl.Class matches 3 run title @s subtitle {"text":"You cannot learn this Mage spell!","color":"red"}
execute unless score @s cl.Class matches 4 run title @s subtitle {"text":"You cannot learn this Healer spell!","color":"red"}
title @s title {"text":""}
