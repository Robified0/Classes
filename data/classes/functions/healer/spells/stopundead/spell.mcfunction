#Not Enough Mana
execute if entity @s[scores={cl.Mana=..3}] run function classes:main/mana_system/nomana

#Damage nearby
execute as @s[scores={cl.Mana=4..}] run tag @s add GetAngry
execute as @s[scores={cl.Mana=4..}] at @s run tag @e[type=#classes:undead,distance=..10,tag=!summoned] add StopUndead
execute as @s[scores={cl.Mana=4..}] at @s as @e[tag=StopUndead,distance=..10] run scoreboard players set @s cl.HitBySpell 100
execute as @s[scores={cl.Mana=4..}] at @s as @e[tag=StopUndead,distance=..10] run function classes:main/loot_table/main
execute as @s[scores={cl.Mana=4..}] at @s as @e[tag=StopUndead,distance=..10] run scoreboard players set @s cl.e.StopUndead 200
execute as @s[scores={cl.Mana=4..}] at @e[tag=StopUndead,distance=..10] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 20 normal

#Get mobs angry if not already
execute as @s[scores={cl.Mana=4..}] at @s as @e[type=#classes:undead,distance=..10,nbt={AngerTime:0},tag=!summoned] run data modify entity @s AngryAt set from entity @p[tag=GetAngry] UUID
execute as @s[scores={cl.Mana=4..}] at @s as @e[type=#classes:undead,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[tag=GetAngry] UUID
tag @s remove GetAngry

#Sound effect
execute as @s[scores={cl.Mana=4..}] at @e[tag=StopUndead,distance=..10] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 1.5
execute as @s[scores={cl.Mana=4..}] at @e[tag=StopUndead,distance=..10] run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 0.5 2
#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] if entity @e[tag=StopUndead,distance=..10] at @s run function classes:healer/spells/all/cast

#Spell Cast Notification
execute as @s[scores={cl.Mana=4..}] if entity @e[tag=StopUndead,distance=..10] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Deep Freeze!","bold":true,"color":"#0096FF"}]
execute as @s[scores={cl.Mana=4..}] unless entity @e[tag=StopUndead,distance=..10] run function classes:main/mana_system/noneinrange

#Cooldown
execute as @s[scores={cl.Mana=4..}] if entity @e[tag=StopUndead,distance=..10] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=4..}] if entity @e[tag=StopUndead,distance=..10] run scoreboard players remove @s cl.Mana 4

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/stopundead
