execute as @s[scores={spellHeal=4}] run function classes:healer/spells/heal/select
execute as @s[scores={spellFirstAid=4}] run function classes:healer/spells/firstaid/select
scoreboard players set @s currentSpellSel 4
