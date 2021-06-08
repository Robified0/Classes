execute as @s[scores={spellHeal=5}] run function classes:healer/spells/heal/select
execute as @s[scores={spellFirstAid=5}] run function classes:healer/spells/firstaid/select
scoreboard players set @s currentSpellSel 5
