## Executing as player who has wand and incompatible armor equipped.

#Play sound effect
playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 0.5 2

#Display title
title @s times 20 100 20
title @s subtitle {"text":"Your armor weighs you down, and the spell fails.","color":"red"}
title @s title {"text":""}
