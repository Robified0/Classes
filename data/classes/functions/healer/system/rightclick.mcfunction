#Healing Spells
execute if entity @s[scores={cl.Healer.Armor=0},predicate=classes:checkspell/healer/healingspell] run function classes:healer/system/castspell/healingspell

#Smiting Spells
execute if entity @s[scores={cl.Healer.Armor=0},predicate=classes:checkspell/healer/smitingspell] run function classes:healer/system/castspell/smitingspell

#Buff Spells
execute if entity @s[scores={cl.Healer.Armor=0},predicate=classes:checkspell/healer/buffspell] run function classes:healer/system/castspell/buffspell

#Holy Essence
execute if entity @s[scores={cl.Healer.Armor=0},predicate=classes:checkspell/healer/holyessence] run function classes:healer/system/castspell/holyessence

#Handle spell selection (summon minecart, copy items, write to inventory, set score, and then clear the left over slots in the hotbar).
execute positioned ~ -70 ~ if entity @e[type=minecraft:chest_minecart,distance=..2] at @s if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/existing
execute positioned ~ -70 ~ unless entity @e[type=minecraft:chest_minecart,distance=..2] at @s if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/main
