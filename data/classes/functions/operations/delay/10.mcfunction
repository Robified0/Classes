### Runs commands here once every half second (10 ticks)

#Run function when #cl.t.10Tick score hits 10 (operations/delay/main)

#Summon Magic Table
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool",Count:1b}}] at @s positioned ~ ~-0.25 ~ if block ~ ~ ~ bookshelf run function classes:blocks/magictable/summon

#Summon Rune Table
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] at @s positioned ~ ~-0.25 ~ if block ~ ~ ~ minecraft:enchanting_table run function classes:blocks/runetable/placing/summon

#Reset score
scoreboard players set #cl.t.10Tick cl.t.Tick 0
