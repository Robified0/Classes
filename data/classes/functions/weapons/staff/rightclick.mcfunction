#Detect shield
execute if entity @s[predicate=classes:check/armor/shield] run function classes:main/mana_system/armor

#Detect No Wand
execute if entity @s[scores={cl.track.sneak=0},predicate=classes:checkwand/wandoffhand,predicate=!classes:check/armor/shield] run function classes:main/mana_system/equipwand

#Detect sneaking for changing Spells
execute if entity @s[scores={cl.track.sneak=1..},predicate=classes:checkwand/wand,predicate=!classes:check/armor/shield] run function classes:weapons/staff/switch/switch

#Cast Spells if not sneaking, and holding wand
execute if entity @s[scores={cl.track.sneak=0,cl.Cooldown=0},predicate=classes:checkwand/wand,predicate=!classes:check/armor/shield] at @s run function classes:weapons/staff/castspell

#Do damage
execute if entity @s[scores={cl.track.sneak=0,cl.Cooldown=0},predicate=classes:checkwand/wand,predicate=!classes:check/armor/shield] at @s run item modify entity @s weapon.mainhand classes:items/staff/setdamage
