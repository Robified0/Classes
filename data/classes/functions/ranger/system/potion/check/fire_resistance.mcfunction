### Execute as Ranger who is holding any version of Fire Resistance (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/fire_resistance/fire_resistance] run scoreboard players set @s cl.t.PotionEff 1
execute if entity @s[predicate=classes:ranger/potion/fire_resistance/long_fire_resistance] run scoreboard players set @s cl.t.PotionEff 2
