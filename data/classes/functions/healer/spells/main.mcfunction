####################################
#          Main Spell File         #
#                                  #
# This file is used to fire off    #
# the spell once it is selected    #
# and the player right clicks with #
# the wand in hand.                #
#                                  #
# All new spells need a line here, #
# adjusting for scoreboard and     #
# detected tag on wand.            #
####################################

#Stat handling
#execute as @a[scores={cl.Class=4}] run function classes:mage/stats/main

#Detect Spells
execute if entity @a[scores={cl.Class=4,cl.rightClick=1}] as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.Class=4}] run function classes:healer/system/rightclick
