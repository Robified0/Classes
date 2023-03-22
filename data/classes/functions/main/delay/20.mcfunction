### Runs commands here once every second (20 ticks)

#Run function when #cl.t.20Tick score hits 20 (main/delay/main)

#Get time
execute as @e[type=item,tag=cl.SoulExtract.Setup] at @s run function classes:blocks/soul_campfire/main

#Handle custom spawning of mobs
function classes:entities/custom/loopsummon

#Stat handling
execute as @a[scores={cl.Class=1}] run function classes:knight/stats/main
execute as @a[scores={cl.Class=2}] run function classes:ranger/stats/main
execute as @a[scores={cl.Class=3}] run function classes:mage/stats/main
execute as @a[scores={cl.Class=4}] run function classes:healer/stats/main

#Run turning Spirit Essences into Elemental Essences
execute as @e[type=item,nbt={Item:{tag:{cl.Soul:1b}}}] at @s if data entity @s Thrower run function classes:items/soul/main

#Bless handling
execute as @a[scores={cl.e.Bless=1..}] run function classes:abilities/effects/bless/bless

#Check for Ranger potions, and set cl.t.PotionEff for tracking
execute as @a[scores={cl.Class=2},predicate=classes:ranger/potion/check] at @s run function classes:ranger/system/potion/check/main

#Check for Ranger holding bow/crossbow in mainhand
execute as @a[scores={cl.Class=2}] run function classes:ranger/stats/bow

#Check if Knight is holding up shield
execute as @a[scores={cl.Class=1,cl.t.blocking=1..}] at @s run function classes:knight/system/blocking

#Check if Knight is low on Health
execute as @a[scores={cl.Class=1,cl.o.health=..6}] at @s run function classes:knight/system/lowhealth

#Handle Knight bonuses for Raids
execute as @a[scores={cl.Class=1}] at @s if entity @e[type=#classes:illagers,tag=cl.t.Raider,distance=..10] run function classes:knight/system/raid/main

#Remove score counting Magic Essence transform if they aren't holding soul anymore.
execute as @a[predicate=!classes:checkspell/mage/magicessence] run scoreboard players set @s cl.t.magic_essence 0

#Kill fireballs that have been deflected
execute as @e[type=#classes:fireballs,tag=cl.t.newFireball] at @s run function classes:main/motion/killfireball

#Clear Specific Items
#Check the state of the Dropper
execute as @a at @s as @e[type=marker,tag=cl.magicTable,distance=..5] at @s if block ~ ~ ~ dropper[facing=up] run function classes:blocks/magictable/check

#Handle Slimes & Armor Stands for Earth wall
execute as @e[type=#classes:mage/spell/earthwall,scores={cl.spell.earthWall=0..}] at @s run function classes:abilities/effects/earthwall

#Reset score
scoreboard players set #cl.t.20Tick cl.t.Tick 0
