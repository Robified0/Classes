# Handle Magic Essence

# Count with scoreboard
scoreboard players add @s cl.t.holy_essence 1

# Particle/sound effect.
particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.03 30
playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 0.3 2

#Finish sound
execute if score @s cl.t.holy_essence matches 10 run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.3 2

# When scoreboard hits value, give item, remove one Spirit Essence
# Remove cl.SpiritEssence tag
execute if score @s cl.t.holy_essence matches 10 run clear @s minecraft:structure_block{CustomModelData:110} 1

# Merge appropriate info to it
execute if score @s cl.t.holy_essence matches 10 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:structure_block",Count:1b,tag:{display:{Name:'{"text":"Holy Essence","color":"white","italic":true}'},HideFlags:127,CustomModelData:105,Holy:1b,Enchantments:[{}]}}}

#Reset score
execute if score @s cl.t.holy_essence matches 10.. run scoreboard players set @s cl.t.holy_essence 0
