### Executing as Mage player (operations/delay/20)

#Grab the current base stats. Compare to set values, and if not equal, then set.
execute store result score @s cl.o.maxHealth run attribute @s minecraft:generic.max_health base get
execute store result score @s cl.o.genAtkSpd run attribute @s minecraft:generic.attack_speed base get 100
execute store result score @s cl.o.genAtkDmg run attribute @s minecraft:generic.attack_damage base get 100
execute unless entity @s[scores={cl.o.getAtkSpd=370}] run attribute @s minecraft:generic.attack_speed base set 3.7
execute unless entity @s[scores={cl.o.getAtkDmg=0}] run attribute @s minecraft:generic.attack_damage base set 0
execute unless entity @s[scores={cl.o.maxHealth=20}] run attribute @s minecraft:generic.max_health base set 20

#Halve armor
attribute @s generic.armor modifier add f836241b-d712-463d-b80f-77705fddad01 half -0.5 multiply

scoreboard players set @s[predicate=classes:checkarmor/mage/shield] cl.Mage.Armor 1
