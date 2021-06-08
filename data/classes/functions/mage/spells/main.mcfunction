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

#Fire Spells
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellTorch=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Torch"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/torch/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellBedofCoals=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"BedofCoals"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/bedofcoals/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellFlameBurst=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"FlameBurst"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/flameburst/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellFireball=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Fireball"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/fireball/spell

#Water Spells
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellWaterStrike=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"WaterStrike"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/waterstrike/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellIceShard=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"IceShard"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/iceshard/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellColdShield=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"ColdShield"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/coldshield/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellDeepFreeze=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"DeepFreeze"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/deepfreeze/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellSnowGolem=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"SnowGolem"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/snowgolem/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellWaterAir=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"WaterAir"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/waterbreath/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellDolpGrace=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"DolpGrace"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/dolpgrace/spell

#Air spells
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellLevitate=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Levitate"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/levitate/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellSlowFall=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"SlowFall"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/slowfall/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellTailWind=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"TailWind"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/tailwind/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellBunnyHop=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"BunnyHop"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/bunnyhop/spell

#Earth Spells
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellPoison=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Poison"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/poison/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellStoneFlesh=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"StoneFlesh"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/stoneflesh/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellIronFlesh=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"IronFlesh"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/ironflesh/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellDiaFlesh=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"DiaFlesh"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/diamondflesh/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellIronGolem=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"IronGolem"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/irongolem/spell

#Light
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellLight=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Light"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/light/spell
execute as @a[scores={cooldown=0,rightClick=1..,Sneaking=0,spellTeleport=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Teleport"}}},nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b}]}] at @s run function classes:mage/spells/teleport/spell
