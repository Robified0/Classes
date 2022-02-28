### Execute as Ranger who is holding any version of Regeneration (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/regeneration/regeneration] run scoreboard players set @s cl.t.PotionEff 10
execute if entity @s[predicate=classes:ranger/potion/regeneration/long_regeneration] run scoreboard players set @s cl.t.PotionEff 11
execute if entity @s[predicate=classes:ranger/potion/regeneration/strong_regeneration] run scoreboard players set @s cl.t.PotionEff 12
