scoreboard players reset @s cl.spell.equip.start
clear @s

#Handle overworld summon
execute if entity @s[predicate=classes:check/dimension/overworld] positioned ~ -70 ~ run function classes:operations/track/spellequip/restore/restore

#Handle Nether
execute if entity @s[predicate=classes:check/dimension/the_nether] positioned ~ -30 ~ run function classes:operations/track/spellequip/restore/restore

#Handle End
execute if entity @s[predicate=classes:check/dimension/the_end] positioned ~ -30 ~ run function classes:operations/track/spellequip/restore/restore
