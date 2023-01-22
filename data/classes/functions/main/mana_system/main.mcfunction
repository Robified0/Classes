scoreboard players set @s cl.ManaMax 20
execute if predicate classes:check/armor/head run scoreboard players remove @s cl.ManaMax 2
execute if predicate classes:check/armor/chest run scoreboard players remove @s cl.ManaMax 6
execute if predicate classes:check/armor/legs run scoreboard players remove @s cl.ManaMax 4
execute if predicate classes:check/armor/feet run scoreboard players remove @s cl.ManaMax 2

execute if score @s cl.Mana < @s cl.ManaMax run function classes:main/mana_system/mage/mana_regen

execute if score @s cl.Mana > @s cl.ManaMax run scoreboard players operation @s cl.Mana = @s cl.ManaMax
