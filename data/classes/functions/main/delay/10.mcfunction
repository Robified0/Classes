### Runs commands here once every half second (10 ticks)

#Run function when #cl.t.10Tick score hits 10 (main/delay/main)

#Summon Rune Table
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool",count:1}}] at @s positioned ~ ~-0.25 ~ if block ~ ~ ~ bookshelf run function classes:blocks/runetable/placing/summon

#Soul creation
execute as @e[type=item,tag=!cl.SoulExtract.Setup] at @s if block ~ ~ ~ minecraft:soul_campfire[lit=true] if block ~ ~-1 ~ minecraft:lapis_block unless entity @e[type=item,tag=cl.SoulExtract.Setup,distance=..0.8] run function classes:blocks/soul_campfire/checkitems

#Reset spells when different wand selected
execute as @a run function classes:main/hotbarswitch

#Reset score
scoreboard players set #cl.t.10Tick cl.t.Tick 0
