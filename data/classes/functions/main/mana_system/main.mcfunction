#Set the base value of Max Mana
scoreboard players set @s cl.ManaMax 20

#Subtract Mana based on armor score (tracked in main/delay/20)
scoreboard players operation @s cl.ManaMax -= @s cl.track.ArmorBonus

#Regen mana, as long as current is less than available max
execute if score @s cl.Mana < @s cl.ManaMax run function classes:main/mana_system/mana_regen

#If current Mana runs over Max, fix it.
execute if score @s cl.Mana > @s cl.ManaMax run scoreboard players operation @s cl.Mana = @s cl.ManaMax
