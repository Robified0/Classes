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
execute if entity @e[type=marker,tag=Guard] as @e[type=marker,tag=Guard] run function classes:healer/effects/guard

#Inspire
execute if entity @a[scores={cl.e.Inspire=1..}] as @a[scores={cl.e.Inspire=1..}] run function classes:healer/effects/inspire

#Mending
execute if entity @e[type=#classes:healertargets,scores={cl.e.Mending=1..}] as @e[type=#classes:healertargets,scores={cl.e.Mending=1..}] run function classes:healer/effects/mending

#Fire Resist
execute if entity @e[type=#classes:healertargets,scores={cl.e.FireResist=1..}] as @e[type=#classes:healertargets,scores={cl.e.FireResist=1..}] run function classes:healer/effects/fireresist

#Speed Boost
execute if entity @a[scores={cl.e.SpeedBoost=1..}] as @a[scores={cl.e.SpeedBoost=1..}] run function classes:healer/effects/speedboost

#Cure Effects
execute if entity @a[scores={cl.e.CureEffects=1..}] as @a[scores={cl.e.CureEffects=1..}] run function classes:healer/effects/cureeffects

#Vitality
execute if entity @a[scores={cl.e.Vitality=1..}] as @a[scores={cl.e.Vitality=1..}] run function classes:healer/effects/vitality

#Bless
execute if entity @a[scores={cl.e.Bless=1..}] as @a[scores={cl.e.Bless=1..}] run function classes:healer/effects/bless

#Stop Undead
execute if entity @e[type=#classes:undead,scores={cl.e.StopUndead=1..}] as @e[type=#classes:undead,scores={cl.e.StopUndead=1..}] run function classes:healer/effects/stopundead
