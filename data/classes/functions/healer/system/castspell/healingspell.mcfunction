#Healing spells
execute if entity @s[scores={cl.spell.selected=700}] run function classes:healer/spells/healing/heal/cast
execute if entity @s[scores={cl.spell.selected=701}] run function classes:healer/spells/healing/healcircle/cast
execute if entity @s[scores={cl.spell.selected=702}] run function classes:healer/spells/healing/satiate/cast
execute if entity @s[scores={cl.spell.selected=703}] run function classes:healer/spells/healing/cureeffects/cast
execute if entity @s[scores={cl.spell.selected=704}] run function classes:healer/spells/healing/mending/cast
