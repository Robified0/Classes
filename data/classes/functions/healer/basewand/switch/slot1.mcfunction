execute as @s[scores={spellHeal=1}] run function classes:healer/spells/heal/select
execute as @s[scores={spellFirstAid=1}] run function classes:healer/spells/firstaid/select
scoreboard players set @s currentSpellSel 1
