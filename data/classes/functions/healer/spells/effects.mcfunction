########################################
#          AOE Spell Effects           #
#                                      #
# This provides particle effects to    #
# specific spells that have a duration #
# (looks better than potion effects)   #
#                                      #
# Tags are listed next to each         #
# heading.                             #
#                                      #
########################################

#Wind Ward
execute if entity @e[tag=Guard] as @e[tag=Guard] run function classes:healer/effects/guard
