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
scoreboard players remove @s[scores={cl.summonCount=1..}] cl.summonCount 1
execute if entity @e[type=#classes:summonable,tag=cl.t.summoned] run scoreboard players remove @e[type=#classes:summonable,tag=cl.t.summoned,scores={cl.summonCount=0..}] cl.summonCount 1

#Ice Walker (tag=IceWalker)
execute if entity @s[scores={cl.e.IceWalker=0..}] at @s run function classes:mage/effects/icewalker

#Blizzard
execute if entity @s[scores={cl.e.Blizzard=0..}] at @s run function classes:mage/effects/blizzard

#Fire Shield - (tag=FireShield)
execute if entity @s[scores={cl.e.FireShield=0..}] at @s run function classes:mage/effects/fireshield

#Slow Fall - (tag=SlowFall)
execute if entity @s[scores={cl.e.SlowFall=0..}] at @s run function classes:mage/effects/slowfall

#Tail Wind - (tag=TailWind)
execute if entity @s[scores={cl.e.TailWind=0..}] at @s run function classes:mage/effects/tailwind

#Tail Wind - (tag=BunnyHop)
execute if entity @s[scores={cl.e.BunnyHop=0..}] at @s run function classes:mage/effects/bunnyhop

#Mage Armor - (tag=MageArmor)
execute if entity @s[scores={cl.e.MageArmor=0..}] at @s run function classes:mage/effects/magearmor

#Iron Flesh - (tag=IronFlesh)
execute if entity @s[scores={cl.e.IronFlesh=0..}] at @s run function classes:mage/effects/ironflesh

#Gold Flesh - (tag=GoldFlesh)
execute if entity @s[scores={cl.e.GoldFlesh=0..}] at @s run function classes:mage/effects/goldflesh

#Diamond Flesh - (tag=DiaFlesh)
execute if entity @s[scores={cl.e.DiaFlesh=0..}] at @s run function classes:mage/effects/diamondflesh

#Deep Freeze - (tag=DeepFreeze)
execute if entity @e[type=!#classes:nontarget,scores={cl.e.DeepFreeze=0..}] as @e[type=!#classes:nontarget,scores={cl.e.DeepFreeze=0..}] at @s run function classes:mage/effects/deepfreeze

#Shield Spell
execute if entity @s[scores={cl.e.Shield=0..}] at @s run function classes:mage/effects/shield

#Handle logic for summoned Snow Golem
execute if entity @e[type=snow_golem,tag=cl.t.summoned] as @e[type=snow_golem,tag=cl.t.summoned] at @s run function classes:mage/effects/snowgolem

#Handle logic for summoned Iron Golem
execute if entity @e[type=iron_golem,tag=cl.t.summoned] as @e[type=iron_golem,tag=cl.t.summoned] at @s run function classes:mage/effects/irongolem

#Handle logic for Light Spell marker
execute if entity @e[type=marker,tag=cl.t.light] as @e[type=marker,tag=cl.t.light] at @s run function classes:mage/effects/light
