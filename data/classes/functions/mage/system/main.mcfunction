####################################
#          Main Spell File         #
#                                  #
# This file is used to fire off    #
# the spell once it is selected    #
# and the player right clicks with #
# the wand in hand.                #
#                                  #
# New spells need to be added to   #
# (class)/system/rightclick as     #
# well as each slot file in the    #
# (class)/system/wand/switch/slot# #
# files. Adjust for score as it is #
# needed.                          #
####################################

#Right-click detection

#Detect No Wand
execute if entity @a[scores={cl.track.sneak=0,cl.Class=3,cl.rightClick=1..}] as @a[predicate=classes:checkwand/wandoffhand,scores={cl.Class=3,cl.rightClick=1..}] run function classes:main/mana_system/equipwand

#Detect sneaking for changing Spells
execute if entity @a[scores={cl.track.sneak=1..,cl.Class=3,cl.rightClick=1..}] as @a[predicate=classes:checkwand/wand,scores={cl.track.sneak=1..,cl.Class=3,cl.rightClick=1..}] run function classes:mage/system/wand/switch/switch

#Spellbook Right Click
execute if entity @a[scores={cl.track.sneak=0,cl.Class=3,cl.rightClick=1..}] as @a[predicate=classes:items/books/spellbook,scores={cl.Cooldown=0,cl.Class=3,cl.rightClick=1..}] at @s run function classes:operations/track/spellequip/spellbookuse

#Detect Wand
execute if entity @a[scores={cl.track.sneak=0,cl.Class=3,cl.rightClick=1..}] as @a[predicate=classes:checkwand/wand,scores={cl.Cooldown=0,cl.Class=3,cl.rightClick=1..}] at @s run function classes:mage/system/rightclick

#Learn Spell
execute if entity @a[scores={cl.track.sneak=0,cl.rightClick=1..}] as @a[predicate=classes:items/scrolls/learnspell,predicate=classes:check/mage/scroll,scores={cl.track.sneak=0,cl.rightClick=1..}] run function classes:mage/system/learnspell/main

#AOE Effect detection
execute as @e[type=area_effect_cloud] at @s run function classes:mage/system/effects/aoeeffects

#Effect detection
execute as @a run function classes:mage/system/effects/effects
