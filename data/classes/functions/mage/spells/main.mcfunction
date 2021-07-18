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
execute as @a[scores={cl.Class=3}] run function classes:mage/stats/main

#Fire Spells
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.Torch=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Torch"}}}] at @s run function classes:mage/spells/torch/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.BedofCoals=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"BedofCoals"}}}] at @s run function classes:mage/spells/bedofcoals/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.FlameBurst=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"FlameBurst"}}}] at @s run function classes:mage/spells/flameburst/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.Fireball=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Fireball"}}}] at @s run function classes:mage/spells/fireball/spell

#Water Spells
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.WaterStrike=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"WaterStrike"}}}] at @s run function classes:mage/spells/waterstrike/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.IceShard=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"IceShard"}}}] at @s run function classes:mage/spells/iceshard/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.ColdShield=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"ColdShield"}}}] at @s run function classes:mage/spells/coldshield/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.DeepFreeze=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"DeepFreeze"}}}] at @s run function classes:mage/spells/deepfreeze/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.SnowGolem=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"SnowGolem"}}}] at @s run function classes:mage/spells/snowgolem/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.WaterAir=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"WaterAir"}}}] at @s run function classes:mage/spells/waterbreath/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.DolpGrace=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"DolpGrace"}}}] at @s run function classes:mage/spells/dolpgrace/spell

#Air spells
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.Levitate=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Levitate"}}}] at @s run function classes:mage/spells/levitate/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.SlowFall=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"SlowFall"}}}] at @s run function classes:mage/spells/slowfall/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.TailWind=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"TailWind"}}}] at @s run function classes:mage/spells/tailwind/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.BunnyHop=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"BunnyHop"}}}] at @s run function classes:mage/spells/bunnyhop/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.WindWard=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"WindWard"}}}] at @s run function classes:mage/spells/windward/spell

#Earth Spells
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.Poison=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Poison"}}}] at @s run function classes:mage/spells/poison/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.StoneFlesh=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"StoneFlesh"}}}] at @s run function classes:mage/spells/stoneflesh/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.IronFlesh=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"IronFlesh"}}}] at @s run function classes:mage/spells/ironflesh/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.DiaFlesh=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"DiaFlesh"}}}] at @s run function classes:mage/spells/diamondflesh/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.IronGolem=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"IronGolem"}}}] at @s run function classes:mage/spells/irongolem/spell

#Light
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.Light=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Light"}}}] at @s run function classes:mage/spells/light/spell
execute as @a[scores={cl.Cooldown=0,cl.rightClick=1..,cl.Sneaking=0,cl.s.Teleport=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Teleport"}}}] at @s run function classes:mage/spells/teleport/spell
