execute as @s[scores={cl.s.Heal=1}] run function classes:healer/spells/heal/select
execute as @s[scores={cl.s.FirstAid=1}] run function classes:healer/spells/firstaid/select
scoreboard players set @s cl.currSpellSel 1
