### Execute as Ranger who is holding any version of Strength (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/strength/strength] run scoreboard players set @s cl.t.PotionEff 15
execute if entity @s[predicate=classes:ranger/potion/strength/long_strength] run scoreboard players set @s cl.t.PotionEff 16
execute if entity @s[predicate=classes:ranger/potion/strength/strong_strength] run scoreboard players set @s cl.t.PotionEff 17
