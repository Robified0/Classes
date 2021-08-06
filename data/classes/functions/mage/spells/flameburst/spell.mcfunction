#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:mage/mana/nomana

#Damage nearby entities
execute at @s[scores={cl.Mana=3..}] as @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..6,sort=random,tag=!summoned] run tag @s add FlameBurst

#Process loot_tables before damage
execute at @s[scores={cl.Mana=3..},distance=..6] as @e[tag=FlameBurst] run scoreboard players set @s cl.HitBySpell 100
execute as @s[scores={cl.Mana=3..},distance=..6] as @e[tag=FlameBurst] run function classes:main/loot_table/main
execute at @s[scores={cl.Mana=3..}] as @e[tag=FlameBurst,distance=..6] run data merge entity @s {Fire:100}
execute as @s[scores={cl.Mana=3..}] at @s run effect give @e[type=!#classes:undead,tag=FlameBurst,distance=..6] instant_damage 1 1 false
execute as @s[scores={cl.Mana=3..}] at @s run effect give @e[type=#classes:undead,tag=FlameBurst,distance=..6] instant_health 1 1 false
execute as @s[scores={cl.Mana=3..}] at @e[tag=FlameBurst,distance=..6] run particle flame ~ ~ ~ 0.1 0.5 0.1 0.35 100 force

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:mage/spells/all/cast

#Sound effect
execute as @s[scores={cl.Mana=3..}] at @e[tag=FlameBurst,distance=..6] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5
execute as @s[scores={cl.Mana=3..}] at @s unless entity @e[tag=FlameBurst,distance=..6] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 2

#Spell Cast Notification
execute as @s[scores={cl.Mana=3..}] if entity @e[tag=FlameBurst,distance=..6] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Flame Burst!","bold":true,"color":"#FF3034"}]
execute as @s[scores={cl.Mana=3..}] unless entity @e[tag=FlameBurst,distance=..6] run function classes:mage/mana/noneinrange

#Cooldown
execute as @s[scores={cl.Mana=3..}] if entity @e[tag=FlameBurst,distance=..6] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=3..}] if entity @e[tag=FlameBurst,distance=..6] run scoreboard players remove @s cl.Mana 3

#Remove Tag
execute as @s[scores={cl.Mana=3..}] run tag @e[tag=FlameBurst,distance=..6] remove FlameBurst
