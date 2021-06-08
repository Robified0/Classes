#Not Enough Mana
execute if entity @s[scores={Mana=..3}] run function classes:mage/mana/nomana

#Summon AEC
execute if entity @s[scores={Mana=4..}] at @s as @e[tag=summoned] if score @s summonCount = @p summonCount run scoreboard players set @e[tag=summoned,sort=nearest,limit=1] summonCount 1
execute as @s[scores={Mana=4..}] run summon snow_golem ~ ~ ~ {DeathLootTable:"none",Pumpkin:0b,Tags:["summoned"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:199980,ShowParticles:0b}]}
execute as @s[scores={Mana=4..}] run scoreboard players set @e[type=snow_golem,tag=summoned,limit=1,sort=nearest] summonCount 1200
execute as @s[scores={Mana=4..}] run scoreboard players set @s summonCount 1200
execute as @s[scores={Mana=4..}] as @e[type=snow_golem,tag=summoned] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 1 1 1 2 30 normal

#Play sound
execute at @s[scores={Mana=4..}] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.1 2
execute at @s[scores={Mana=4..}] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=5..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute as @s[scores={Mana=4..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Summon Snow Golem!","bold":true,"color":"#0096FF"}]

#Cooldown
execute as @s[scores={Mana=4..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=4..}] run scoreboard players remove @s Mana 4
