### Execute as Ranger who is holding any version of Swiftness (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/swiftness/swiftness] run scoreboard players set @s cl.t.PotionEff 18
execute if entity @s[predicate=classes:ranger/potion/swiftness/long_swiftness] run scoreboard players set @s cl.t.PotionEff 19
execute if entity @s[predicate=classes:ranger/potion/swiftness/strong_swiftness] run scoreboard players set @s cl.t.PotionEff 20
