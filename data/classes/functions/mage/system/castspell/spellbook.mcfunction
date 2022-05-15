# Handle creating Spellbook

# Particle/sound effect.
particle minecraft:witch ~ ~ ~ 0.5 0.2 0.5 0.3 40

#Finish sound
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.3 2

# When scoreboard hits value, give item, remove a book.
item replace entity @s weapon.offhand with minecraft:air

# Merge appropriate info to it
execute at @s run give @s book{display:{Name:'{"text":"Spellbook","color":"light_purple","italic":true}',Lore:['{"text":"Used to allow equipping different spells.","color":"white","italic":true}']},CustomModelData:99,cl.item.spellbook:1b} 1

#Avoid instant spell cast after.
scoreboard players set @s cl.Cooldown 40
