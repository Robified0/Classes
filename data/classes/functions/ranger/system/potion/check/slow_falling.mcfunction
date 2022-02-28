### Execute as Ranger who is holding any version of Slow Falling (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/slow_falling/slow_falling] run scoreboard players set @s cl.t.PotionEff 13
execute if entity @s[predicate=classes:ranger/potion/slow_falling/long_slow_falling] run scoreboard players set @s cl.t.PotionEff 14
