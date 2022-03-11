### Executing as Knight player (operations/delay/20)

#Grab the current base stats. Compare to set values, and if not equal, then set.
execute store result score @s cl.o.maxHealth run attribute @s minecraft:generic.max_health base get
execute store result score @s cl.o.genAtkSpd run attribute @s minecraft:generic.attack_speed base get 100
execute store result score @s cl.o.genAtkDmg run attribute @s minecraft:generic.attack_damage base get 100
execute store result score @s cl.o.knockBack run attribute @s minecraft:generic.knockback_resistance base get 100
execute unless entity @s[scores={cl.o.maxHealth=30}] run attribute @s minecraft:generic.max_health base set 30
execute unless entity @s[scores={cl.o.getAtkSpd=400}] run attribute @s minecraft:generic.attack_speed base set 4
execute unless entity @s[scores={cl.o.getAtkDmg=400}] run attribute @s minecraft:generic.attack_damage base set 4
execute unless entity @s[scores={cl.o.knockBack=40}] run attribute @s minecraft:generic.knockback_resistance base set 0.4

#Mana Reset
execute if entity @s[scores={cl.Mana=-10..}] run scoreboard players reset @s cl.Mana
