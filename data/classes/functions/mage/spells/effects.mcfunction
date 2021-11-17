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

#Ice Walker (tag=IceWalker)
execute if entity @a[tag=IceWalker,scores={cl.e.IceWalker=-10..}] run function classes:mage/effects/icewalker

#Blizzard
execute if entity @a[scores={cl.e.Blizzard=-10..}] as @a[scores={cl.e.Blizzard=-10..}] run function classes:mage/effects/blizzard

#Fire Shield - (tag=FireShield)
execute if entity @a[tag=FireShield,scores={cl.e.FireShield=-10..}] run function classes:mage/effects/fireshield

#Slow Fall - (tag=SlowFall)
execute if entity @a[tag=SlowFall,scores={cl.e.SlowFall=-10..}] run function classes:mage/effects/slowfall

#Tail Wind - (tag=TailWind)
execute if entity @a[tag=TailWind,scores={cl.e.TailWind=-10..}] run function classes:mage/effects/tailwind

#Tail Wind - (tag=BunnyHop)
execute if entity @a[tag=BunnyHop,scores={cl.e.BunnyHop=-10..}] run function classes:mage/effects/bunnyhop

#Iron Flesh - (tag=IronFlesh)
execute if entity @a[tag=IronFlesh,scores={cl.e.IronFlesh=-10..}] run function classes:mage/effects/ironflesh

#Gold Flesh - (tag=GoldFlesh)
execute if entity @a[tag=GoldFlesh,scores={cl.e.GoldFlesh=-10..}] run function classes:mage/effects/goldflesh

#Diamond Flesh - (tag=DiaFlesh)
execute if entity @a[tag=DiaFlesh,scores={cl.e.DiaFlesh=-10..}] run function classes:mage/effects/diamondflesh

#Deep Freeze - (tag=DeepFreeze)
execute if entity @e[tag=DeepFreeze,scores={cl.e.DeepFreeze=-10..}] run function classes:mage/effects/deepfreeze

#Shield Spell
execute if entity @a[scores={cl.e.Shield=-10..}] as @a[scores={cl.e.Shield=-10..}] run function classes:mage/effects/shield

#Kill summoned mob after time has expired
execute if entity @e[type=snow_golem,tag=summoned] run function classes:mage/effects/snowgolem

#Kill summoned mob after time has expired
execute if entity @e[type=iron_golem,tag=summoned] run function classes:mage/effects/irongolem

#Countdown/kill Light Spell marker
execute if entity @e[type=marker,tag=light] run function classes:mage/effects/light
