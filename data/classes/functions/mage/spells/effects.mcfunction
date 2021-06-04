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
scoreboard players remove @a[scores={summonCount=1..}] summonCount 1
scoreboard players remove @e[tag=summoned,scores={summonCount=1..}] summonCount 1

#Cold Shield - (tag=ColdShield)
execute if entity @a[tag=ColdShield,scores={effColdShield=-10..}] run function classes:mage/effects/coldshield

#Slow Fall - (tag=SlowFall)
execute if entity @a[tag=SlowFall,scores={effSlowFall=-10..}] run function classes:mage/effects/slowfall

#Tail Wind - (tag=TailWind)
execute if entity @a[tag=TailWind,scores={effTailWind=-10..}] run function classes:mage/effects/tailwind

#Tail Wind - (tag=BunnyHop)
execute if entity @a[tag=BunnyHop,scores={effBunnyHop=-10..}] run function classes:mage/effects/bunnyhop

#Stone Flesh - (tag=StoneFlesh)
execute if entity @a[tag=StoneFlesh,scores={effStoneFlesh=-10..}] run function classes:mage/effects/stoneflesh

#Iron Flesh - (tag=IronFlesh)
execute if entity @a[tag=IronFlesh,scores={effIronFlesh=-10..}] run function classes:mage/effects/ironflesh

#Diamond Flesh - (tag=DiamFlesh)
execute if entity @a[tag=DiaFlesh,scores={effDiaFlesh=-10..}] run function classes:mage/effects/diamondflesh

#Deep Freeze - (tag=DeepFreeze)
execute if entity @e[tag=DeepFreeze,scores={effDeepFreeze=-10..}] run function classes:mage/effects/deepfreeze

#Kill summoned mob after time has expired
execute if entity @e[type=snow_golem,tag=summoned] run function classes:mage/effects/snowgolem

#Kill summoned mob after time has expired
execute if entity @e[type=iron_golem,tag=summoned] run function classes:mage/effects/irongolem
