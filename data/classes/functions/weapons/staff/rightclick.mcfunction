#Detect No Wand
execute if entity @s[scores={cl.track.sneak=0},predicate=classes:checkwand/wandoffhand] run function classes:main/mana_system/equipwand

#Detect sneaking for changing Spells
execute if entity @s[scores={cl.track.sneak=1..},predicate=classes:checkwand/wand] run function classes:weapons/staff/switch/switch

#Cast Spells if not sneaking, and holding wand
execute if entity @s[scores={cl.track.sneak=0,cl.Cooldown=0},predicate=classes:checkwand/wand] at @s run function classes:weapons/staff/castspell
