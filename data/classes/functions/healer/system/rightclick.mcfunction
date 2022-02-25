#Healing Spells
execute if entity @s[scores={cl.Healer.Armor=0},predicate=classes:checkspell/healer/healingspell] run function classes:healer/system/castspell/healingspell

#Smiting Spells
execute if entity @s[scores={cl.Healer.Armor=0},predicate=classes:checkspell/healer/smitingspell] run function classes:healer/system/castspell/smitingspell

#Buff Spells
execute if entity @s[scores={cl.Healer.Armor=0},predicate=classes:checkspell/healer/buffspell] run function classes:healer/system/castspell/buffspell
