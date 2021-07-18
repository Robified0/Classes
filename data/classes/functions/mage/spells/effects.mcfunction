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
scoreboard players remove @a[scores={cl.summonCount=1..}] cl.summonCount 1
scoreboard players remove @e[tag=summoned,scores={cl.summonCount=1..}] cl.summonCount 1

#Cold Shield - (tag=ColdShield)
execute if entity @a[tag=ColdShield,scores={cl.e.ColdShield=-10..}] run function classes:mage/effects/coldshield

#Slow Fall - (tag=SlowFall)
execute if entity @a[tag=SlowFall,scores={cl.e.SlowFall=-10..}] run function classes:mage/effects/slowfall

#Tail Wind - (tag=TailWind)
execute if entity @a[tag=TailWind,scores={cl.e.TailWind=-10..}] run function classes:mage/effects/tailwind

#Tail Wind - (tag=BunnyHop)
execute if entity @a[tag=BunnyHop,scores={cl.e.BunnyHop=-10..}] run function classes:mage/effects/bunnyhop

#Stone Flesh - (tag=StoneFlesh)
execute if entity @a[tag=StoneFlesh,scores={cl.e.StoneFlesh=-10..}] run function classes:mage/effects/stoneflesh

#Iron Flesh - (tag=IronFlesh)
execute if entity @a[tag=IronFlesh,scores={cl.e.IronFlesh=-10..}] run function classes:mage/effects/ironflesh

#Diamond Flesh - (tag=DiamFlesh)
execute if entity @a[tag=DiaFlesh,scores={cl.e.DiaFlesh=-10..}] run function classes:mage/effects/diamondflesh

#Deep Freeze - (tag=DeepFreeze)
execute if entity @e[tag=DeepFreeze,scores={cl.e.DeepFreeze=-10..}] run function classes:mage/effects/deepfreeze

#Kill summoned mob after time has expired
execute if entity @e[type=snow_golem,tag=summoned] run function classes:mage/effects/snowgolem

#Kill summoned mob after time has expired
execute if entity @e[type=iron_golem,tag=summoned] run function classes:mage/effects/irongolem

#Countdown/kill Light Spell marker
execute if entity @e[type=marker,tag=light] run function classes:mage/effects/light

#Handle Levitate Slow Fall effect.
execute if entity @a[tag=Levitate] as @a[tag=Levitate] run function classes:mage/effects/levitate

#Wind Ward
execute if entity @e[tag=WindWard] as @e[tag=WindWard] run function classes:mage/effects/windward
