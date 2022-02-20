#Not Enough Mana
execute unless entity @s[scores={cl.Mana=6..}] run function classes:main/mana_system/nomana

#Damage nearby entities
execute if entity @s[scores={cl.Mana=6..}] at @s as @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..6,sort=random,tag=!summoned] run tag @s add FlameBurst

#Process loot_tables before damage
execute if entity @s[scores={cl.Mana=6..}] as @e[tag=FlameBurst] run scoreboard players set @s cl.HitBySpell 100
execute if entity @s[scores={cl.Mana=6..}] as @e[tag=FlameBurst] run function classes:main/loot_table/main
execute if entity @s[scores={cl.Mana=6..}] as @e[tag=FlameBurst] run data merge entity @s {Fire:100}
execute if entity @s[scores={cl.Mana=6..}] as @e[tag=FlameBurst,type=creeper] run function classes:entities/vanilla/creeper/fire
execute if entity @s[scores={cl.Mana=6..}] run effect give @e[type=!#classes:undead,tag=FlameBurst] instant_damage 1 1 false
execute if entity @s[scores={cl.Mana=6..}] run effect give @e[type=#classes:undead,tag=FlameBurst] instant_health 1 1 false
execute if entity @s[scores={cl.Mana=6..}] at @e[tag=FlameBurst] run particle flame ~ ~ ~ 0.1 0.5 0.1 0.35 100 force

#Make Mob Angry
execute if entity @s[scores={cl.Mana=6..}] as @e[predicate=classes:entities/angry,tag=!summoned,tag=!cl.Owned,tag=FlameBurst] run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute if entity @s[scores={cl.Mana=6..}] as @e[predicate=classes:entities/angry,tag=!summoned,tag=!cl.Owned,tag=FlameBurst] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=6..}] at @s if entity @e[tag=FlameBurst,distance=..6] run function classes:mage/spells/all/cast

#Sound effect
execute if entity @s[scores={cl.Mana=6..}] at @e[tag=FlameBurst] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5
execute if entity @s[scores={cl.Mana=6..}] at @s unless entity @e[tag=FlameBurst] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 2

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=6..}] if entity @e[tag=FlameBurst] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Flame Burst!","bold":true,"color":"#FF3034"}]
execute if entity @s[scores={cl.Mana=6..}] unless entity @e[tag=FlameBurst] run function classes:main/mana_system/noneinrange

#Cooldown
execute if entity @s[scores={cl.Mana=6..}] if entity @e[tag=FlameBurst] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=6..}] if entity @e[tag=FlameBurst] run scoreboard players remove @s cl.Mana 6

#Remove Tag
execute if entity @s[scores={cl.Mana=6..}] run tag @e[tag=FlameBurst] remove FlameBurst

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/fire/flameburst
