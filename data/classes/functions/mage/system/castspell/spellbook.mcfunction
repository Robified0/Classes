# Handle creating Spellbook

# Particle/sound effect.
particle minecraft:witch ~ ~ ~ 0.5 0.2 0.5 0.3 40

#Finish sound
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.3 2

# Replace book with spellbook
item replace entity @s weapon.offhand with minecraft:book{display:{Name:'{"text":"Spellbook","color":"light_purple","italic":true}',Lore:['{"text":"Used to allow equipping different spells.","color":"white","italic":true}']},CustomModelData:99,cl.item.spellbook:1b}

scoreboard players set @s cl.Cooldown 40

scoreboard players set @s cl.rightClick 0
