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
execute if entity @e[type=marker,tag=cl.t.Guard] as @e[type=marker,tag=cl.t.Guard] at @s run function classes:healer/effects/guard/main

#Inspire
execute if entity @s[scores={cl.e.Inspire=1..}] run function classes:healer/effects/inspire

#Mending
execute if entity @s[scores={cl.e.Mending=1..}] run function classes:healer/effects/mending

#Fire Resist
execute if entity @s[scores={cl.e.FireResist=1..}] run function classes:healer/effects/fireresist

#Speed Boost
execute if entity @s[scores={cl.e.SpeedBoost=1..}] run function classes:healer/effects/speedboost

#Cure Effects
execute if entity @s[scores={cl.e.CureEffects=1..}] run function classes:healer/effects/cureeffects

#Vitality
execute if entity @s[scores={cl.e.Vitality=1..}] run function classes:healer/effects/vitality

#Bless
execute if entity @s[scores={cl.e.Bless=1..}] run function classes:healer/effects/bless/main

#Stop Undead
execute if entity @s[scores={cl.e.StopUndead=0..}] as @e[type=#classes:undead,scores={cl.e.StopUndead=1..}] at @s run function classes:healer/effects/stopundead
execute if entity @s[scores={cl.e.StopUndead=0..}] run scoreboard players remove @s cl.e.StopUndead 1
