### Execute as Ranger who is holding any version of Invisibility (ranger/system/potion/check/main)

execute if entity @s[predicate=classes:ranger/potion/invisibility/invisibility] run scoreboard players set @s cl.t.PotionEff 5
execute if entity @s[predicate=classes:ranger/potion/invisibility/long_invisibility] run scoreboard players set @s cl.t.PotionEff 6
