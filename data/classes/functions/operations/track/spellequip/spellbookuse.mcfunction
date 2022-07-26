#Handle spell selection (summon minecart, copy items, write to inventory, set score, and then clear the left over slots in the hotbar).
#Quick reset
function classes:operations/track/spellequip/reset

#Use Shulker Boxes
execute in overworld run function classes:operations/track/spell/shulkers/main

#Do this in the Overworld
execute if entity @s[predicate=classes:check/dimension/overworld,gamemode=!creative,gamemode=!spectator] at @s positioned ~ -70 ~ if entity @e[type=minecraft:chest_minecart,distance=..2] if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/existing
execute if entity @s[predicate=classes:check/dimension/overworld,gamemode=!creative,gamemode=!spectator] at @s positioned ~ -70 ~ unless entity @e[type=minecraft:chest_minecart,distance=..2] if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/main

#The Nether
execute if entity @s[predicate=classes:check/dimension/the_nether,gamemode=!creative,gamemode=!spectator] at @s positioned ~ -30 ~ if entity @e[type=minecraft:chest_minecart,distance=..2] if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/existing
execute if entity @s[predicate=classes:check/dimension/the_nether,gamemode=!creative,gamemode=!spectator] at @s positioned ~ -30 ~ unless entity @e[type=minecraft:chest_minecart,distance=..2] if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/main

#The End
execute if entity @s[predicate=classes:check/dimension/the_end,gamemode=!creative,gamemode=!spectator] at @s positioned ~ -30 ~ if entity @e[type=minecraft:chest_minecart,distance=..2] if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/existing
execute if entity @s[predicate=classes:check/dimension/the_end,gamemode=!creative,gamemode=!spectator] at @s positioned ~ -30 ~ unless entity @e[type=minecraft:chest_minecart,distance=..2] if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/main
