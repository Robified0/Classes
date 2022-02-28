### Execute as Ranger who is holding any version of Healing (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/healing/healing] run scoreboard players set @s cl.t.PotionEff 3
execute if entity @s[predicate=classes:ranger/potion/healing/strong_healing] run scoreboard players set @s cl.t.PotionEff 4
