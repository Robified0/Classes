#Tag spell type
tag @s add cl.spell.casted.fire

function classes:main/mana_system/cast

scoreboard players set @s cl.Cooldown 20
scoreboard players remove @s cl.Mana 4
