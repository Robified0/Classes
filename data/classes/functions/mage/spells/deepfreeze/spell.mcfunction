#Not Enough Mana
execute if entity @s[scores={Mana=..5}] run function classes:mage/mana/nomana

#Damage nearby
execute as @s[scores={Mana=6..}] run tag @s add GetAngry
execute as @s[scores={Mana=6..}] at @s run tag @e[type=!#classes:nontarget,distance=..10] add DeepFreeze
execute as @s[scores={Mana=6..}] at @s as @e[tag=DeepFreeze,distance=..10] run scoreboard players set @s effDeepFreeze 600
execute as @s[scores={Mana=6..}] at @s run effect give @e[type=!#classes:nontarget,distance=..10] minecraft:slowness 30 3 true
execute as @s[scores={Mana=6..}] at @e[type=!#classes:nontarget,distance=..10] run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 100 normal

#Get mobs angry if not already
execute as @s[scores={Mana=6..}] at @s as @e[type=!#classes:nontarget,distance=..10,nbt={AngerTime:0}] run data modify entity @s AngryAt set from entity @p[tag=GetAngry] UUID
tag @s remove GetAngry

#Sound effect
execute as @s[scores={Mana=6..}] at @e[type=!#classes:nontarget,distance=..10] run playsound minecraft:block.fire.extinguish player @a[distance=..10] ~ ~ ~ 0.8 2
execute as @s[scores={Mana=6..}] at @e[type=!#classes:nontarget,distance=..10] run playsound minecraft:block.amethyst_block.chime player @a[distance=..10] ~ ~ ~ 5 1.5
execute as @s[scores={Mana=6..}] at @s unless entity @e[type=!#classes:nontarget,distance=..10] run playsound minecraft:entity.blaze.shoot player @a[distance=..10] ~ ~ ~ 0.5 2

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=5..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute as @s[scores={Mana=6..}] if entity @e[type=!#classes:nontarget,distance=..10] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Deep Freeze!","bold":true,"color":"#0096FF"}]
execute as @s[scores={Mana=6..}] unless entity @e[type=!#classes:nontarget,distance=..10] run function classes:mage/mana/noneinrange

#Cooldown
execute as @s[scores={Mana=6..}] if entity @e[type=!#classes:nontarget,distance=..10] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=6..}] if entity @e[type=!#classes:nontarget,distance=..10] run scoreboard players remove @s Mana 6
