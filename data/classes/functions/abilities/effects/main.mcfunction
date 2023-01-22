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

#Count summon time
execute if entity @s[scores={cl.summonCount=0..}] run scoreboard players remove @e[type=#classes:summonable,tag=cl.t.summoned,scores={cl.summonCount=0..}] cl.summonCount 1
scoreboard players remove @s[scores={cl.summonCount=0..}] cl.summonCount 1

#Handle Motion
execute if entity @s[scores={cl.e.Shield=1..}] as @e[type=#classes:motionaffected,tag=cl.t.motion_projectile,tag=!cl.t.motion_added] run function classes:operations/motion/motion

#Ice Walker (tag=IceWalker)
execute if entity @s[scores={cl.e.IceWalker=0..}] at @s run function classes:abilities/effects/icewalker

#Blizzard
execute if entity @s[scores={cl.e.Blizzard=0..}] at @s run function classes:abilities/effects/blizzard

#Fire Shield - (tag=FireShield)
execute if entity @s[scores={cl.e.FireShield=0..}] at @s run function classes:abilities/effects/fireshield/main

#Fireball
execute as @e[type=marker,tag=cl.spell.Fireball.rider,predicate=classes:check/vehicle/fireball] at @s run function classes:abilities/effects/fireball

#Bed of Coals
execute as @e[type=minecraft:area_effect_cloud,tag=cl.spell.bedofcoals] at @s as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..5] run function clases:abilities/effects/bedofcoals

#Slow Fall - (tag=SlowFall)
execute if entity @s[scores={cl.e.SlowFall=0..}] at @s run function classes:abilities/effects/slowfall

#Tail Wind - (tag=TailWind)
execute if entity @s[scores={cl.e.TailWind=0..}] at @s run function classes:abilities/effects/tailwind

#Tail Wind - (tag=BunnyHop)
execute if entity @s[scores={cl.e.BunnyHop=0..}] at @s run function classes:abilities/effects/bunnyhop

#Mage Armor - (tag=MageArmor)
execute if entity @s[scores={cl.e.MageArmor=0..}] at @s run function classes:abilities/effects/magearmor

#Iron Flesh - (tag=IronFlesh)
execute if entity @s[scores={cl.e.IronFlesh=0..}] at @s run function classes:abilities/effects/ironflesh

#Gold Flesh - (tag=GoldFlesh)
execute if entity @s[scores={cl.e.GoldFlesh=0..}] at @s run function classes:abilities/effects/goldflesh

#Diamond Flesh - (tag=DiaFlesh)
execute if entity @s[scores={cl.e.DiaFlesh=0..}] at @s run function classes:abilities/effects/diamondflesh

#Deep Freeze - (tag=DeepFreeze) - needs score here to avoid running deduction per entity
execute as @e[type=!#classes:nontarget,scores={cl.e.DeepFreeze=0..}] at @s run function classes:abilities/effects/deepfreeze

#Shield Spell
execute if entity @s[scores={cl.e.Shield=0..}] at @s run function classes:abilities/effects/shield

#Handle logic for summoned Snow Golem
execute if entity @s[scores={cl.summonCount=0..}] as @e[type=snow_golem,tag=cl.t.summoned] at @s run function classes:abilities/effects/snowgolem

#Handle logic for summoned Iron Golem
execute if entity @s[scores={cl.summonCount=0..}] as @e[type=iron_golem,tag=cl.t.summoned] at @s run function classes:abilities/effects/irongolem

#Guard
execute if entity @e[type=marker,tag=cl.t.Guard] as @e[type=marker,tag=cl.t.Guard] at @s run function classes:abilities/effects/guard/main

#Inspire
execute if entity @s[scores={cl.e.Inspire=1..}] run function classes:abilities/effects/inspire

#Mending
execute if entity @s[scores={cl.e.Mending=1..}] run function classes:abilities/effects/mending

#Fire Resist
execute if entity @s[scores={cl.e.FireResist=1..}] run function classes:abilities/effects/fireresist

#Speed Boost
execute if entity @s[scores={cl.e.SpeedBoost=1..}] run function classes:abilities/effects/speedboost

#Cure Effects
execute if entity @s[scores={cl.e.CureEffects=1..}] run function classes:abilities/effects/cureeffects

#Vitality
execute if entity @s[scores={cl.e.Vitality=1..}] run function classes:abilities/effects/vitality

#Bless
execute if entity @s[scores={cl.e.Bless=1..}] run function classes:abilities/effects/bless/main

#Stop Undead
execute if entity @s[scores={cl.e.StopUndead=0..}] as @e[type=#classes:undead,scores={cl.e.StopUndead=1..}] at @s run function classes:abilities/effects/stopundead
execute if entity @s[scores={cl.e.StopUndead=0..}] run scoreboard players remove @s cl.e.StopUndead 1

#Handle logic for Light Spell marker
execute if entity @e[type=marker,tag=cl.t.light] as @e[type=marker,tag=cl.t.light] at @s run function classes:abilities/effects/light
