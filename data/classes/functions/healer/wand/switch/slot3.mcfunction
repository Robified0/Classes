execute as @s[scores={spellHeal=3}] run function classes:healer/spells/heal/select
execute as @s[scores={spellFirstAid=3}] run function classes:healer/spells/firstaid/select
scoreboard players set @s cl.currSpellSel 3
