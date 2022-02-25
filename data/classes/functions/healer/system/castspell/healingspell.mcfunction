#Healing spells
execute if entity @s[predicate=classes:checkspell/healer/healing/heal] run function classes:healer/spells/healing/heal/cast
execute if entity @s[predicate=classes:checkspell/healer/healing/cureffects] run function classes:healer/spells/healing/cureeffects/cast
execute if entity @s[predicate=classes:checkspell/healer/healing/healcircle] run function classes:healer/spells/healing/healcircle/cast
execute if entity @s[predicate=classes:checkspell/healer/healing/mending] run function classes:healer/spells/healing/mending/cast
execute if entity @s[predicate=classes:checkspell/healer/healing/satiate] run function classes:healer/spells/healing/satiate/cast
