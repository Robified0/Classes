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

#Fire Spells
execute if entity @a[scores={cl.Class=3,cl.rightClick=1}] as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.Class=3}] run function classes:mage/system/rightclick
