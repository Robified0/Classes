### Runs commands here once every second (20 ticks)

#Run function when #cl.t.20Tick score hits 20 (main/delay/main)

#Get armor value (for subtracting from mana)
execute as @a store result score @s cl.track.ArmorBonus run attribute @s minecraft:generic.armor get

#Remove specific armor modifier from earlier versions
#attribute @a minecraft:generic.armor modifier remove f836241b-d712-463d-b80f-77705fddad01

#Get time
execute as @e[type=item,tag=cl.SoulExtract.Setup] at @s run function classes:blocks/soul_campfire/main

#Run turning Spirit Essences into Elemental Essences
#execute as @e[type=item,nbt={Item:{tag:{cl.Soul:1b}}}] at @s if data entity @s Thrower run function classes:items/soul/main

#Bless handling
execute as @a[scores={cl.e.Bless=1..}] run function classes:abilities/effects/bless/bless

#Kill fireballs that have been deflected
execute as @e[type=#classes:fireballs,tag=cl.t.newFireball] at @s run function classes:main/motion/killfireball

#Clear Specific Items
#Check the state of the Dropper
execute as @a at @s as @e[type=marker,tag=cl.magicTable,distance=..5] at @s if block ~ ~ ~ dropper[facing=up] run function classes:blocks/magictable/check

#Handle Slimes & Armor Stands for Earth wall
execute as @e[type=#classes:mage/spell/earthwall,scores={cl.spell.earthWall=0..}] at @s run function classes:abilities/effects/earthwall

#Reset score
scoreboard players set #cl.t.20Tick cl.t.Tick 0
