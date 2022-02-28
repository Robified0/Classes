### Execute as Ranger who is holding any version of Leaping (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/leaping/leaping] run scoreboard players set @s cl.t.PotionEff 7
execute if entity @s[predicate=classes:ranger/potion/leaping/long_leaping] run scoreboard players set @s cl.t.PotionEff 8
execute if entity @s[predicate=classes:ranger/potion/leaping/strong_leaping] run scoreboard players set @s cl.t.PotionEff 9
