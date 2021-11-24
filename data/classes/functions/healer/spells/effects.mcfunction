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

#Guard
execute if entity @e[tag=Guard] as @e[tag=Guard] run function classes:healer/effects/guard

#Inspire
execute if entity @e[scores={cl.e.Inspire=1..}] as @e[scores={cl.e.Inspire=1..}] run function classes:healer/effects/inspire

#Mending
execute if entity @e[scores={cl.e.Mending=1..}] as @e[scores={cl.e.Mending=1..}] run function classes:healer/effects/mending

#Fire Resist
execute if entity @e[scores={cl.e.FireResist=1..}] as @e[scores={cl.e.FireResist=1..}] run function classes:healer/effects/fireresist

#Speed Boost
execute if entity @e[scores={cl.e.SpeedBoost=1..}] as @e[scores={cl.e.SpeedBoost=1..}] run function classes:healer/effects/speedboost

#Speed Boost
execute if entity @e[scores={cl.e.CureEffects=1..}] as @e[scores={cl.e.CureEffects=1..}] run function classes:healer/effects/cureeffects

#Vitality
execute if entity @e[scores={cl.e.Vitality=1..}] as @e[scores={cl.e.Vitality=1..}] run function classes:healer/effects/vitality

#Bless
execute if entity @e[scores={cl.e.Bless=1..}] as @e[scores={cl.e.Bless=1..}] run function classes:healer/effects/bless

#Stop Undead
execute if entity @e[scores={cl.e.StopUndead=1..}] as @e[scores={cl.e.StopUndead=1..}] run function classes:healer/effects/stopundead
