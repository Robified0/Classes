# Handle Magic Essence

# Count with scoreboard
scoreboard players add @s cl.t.magic_essence 1

# Particle/sound effect.
particle minecraft:witch ~ ~ ~ 0.5 0.2 0.5 0.3 40
playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 0.3 2

#Finish sound
execute if score @s cl.t.magic_essence matches 10 run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.3 2

# When scoreboard hits value, give item, remove one Spirit Essence
execute if score @s cl.t.magic_essence matches 10 run clear @s minecraft:structure_block{CustomModelData:110} 1

# Summon item
execute if score @s cl.t.magic_essence matches 10 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:structure_block",Count:1b,tag:{display:{Name:'{"text":"Magic Essence","color":"light_purple","italic":true}'},HideFlags:127,CustomModelData:100,Magic:1b,Enchantments:[{}]}}}

#Reset score
execute if score @s cl.t.magic_essence matches 10.. run scoreboard players set @s cl.t.magic_essence 0
