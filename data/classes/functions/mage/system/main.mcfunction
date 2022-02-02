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

#Stat handling
execute as @a[scores={cl.Class=3}] run function classes:mage/stats/main


#Learn Spell detection
execute if entity @a[scores={cl.Class=3,cl.rightClick=1..}] as @a[predicate=classes:checkspell/learnspell,scores={cl.Class=3,cl.rightClick=1..}] run function classes:mage/system/learnspell/learnspell

#Right-click detection
#Display message if armor is equipped (and wand is equipped)
execute if entity @a[scores={cl.Class=3,cl.rightClick=1..}] as @a[predicate=classes:checkwand/wand,scores={cl.Class=3,cl.rightClick=1..,cl.Mage.Armor=1..}] at @s run function classes:main/mana_system/armor
#Detect Wand
execute if entity @a[scores={cl.Class=3,cl.rightClick=1..}] as @a[predicate=classes:checkwand/wand,scores={cl.Cooldown=0,cl.Class=3,cl.rightClick=1..}] run function classes:mage/system/rightclick
#Detect No Wand
execute if entity @a[scores={cl.Class=3,cl.rightClick=1..}] as @a[predicate=!classes:checkwand/wand,scores={cl.Class=3,cl.rightClick=1..}] run function classes:main/mana_system/equipwand

#AOE Effect detection
execute if entity @e[type=area_effect_cloud] run function classes:mage/spells/aoeeffects
