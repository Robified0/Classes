## Executing as player who has right-clicked on a spell book.

#Learn Torch
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Torch:1b}}}] run function classes:mage/system/learnspell/fire/torch

#Learn Bed Of Coals
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{BedOfCoals:1b}}}] run function classes:mage/system/learnspell/fire/bedofcoals

#Learn Flame Burst
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{FlameBurst:1b}}}] run function classes:mage/system/learnspell/fire/flameburst

#Learn Fire Shield
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{FireShield:1b}}}] run function classes:mage/system/learnspell/fire/fireshield

#Learn Waterstrike
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{WaterStrike:1b}}}] run function classes:mage/system/learnspell/water/waterstrike

#Learn Ice Shard
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{IceShard:1b}}}] run function classes:mage/system/learnspell/water/iceshard

#Learn Deep Freeze
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{DeepFreeze:1b}}}] run function classes:mage/system/learnspell/water/deepfreeze

#Learn Snow Golem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{SnowGolem:1b}}}] run function classes:mage/system/learnspell/water/snowgolem

#Learn Water Breathing
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{WaterBreath:1b}}}] run function classes:mage/system/learnspell/water/waterbreath

#Learn Dolphins Grace
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{DolpGrace:1b}}}] run function classes:mage/system/learnspell/water/dolpgrace

#Learn Ice Walker
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{IceWalker:1b}}}] run function classes:mage/system/learnspell/water/icewalker

#Learn Extinguish
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Extinguish:1b}}}] run function classes:mage/system/learnspell/water/extinguish

#Learn Blizzard
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Blizzard:1b}}}] run function classes:mage/system/learnspell/water/blizzard

#Learn Levitate
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Levitate:1b}}}] run function classes:mage/system/learnspell/air/levitate

#Learn Slowfall
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Slowfall:1b}}}] run function classes:mage/system/learnspell/air/slowfall

#Learn Tail Wind
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{TailWind:1b}}}] run function classes:mage/system/learnspell/air/tailwind

#Learn Bunny Hop
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{BunnyHop:1b}}}] run function classes:mage/system/learnspell/air/bunnyhop

#Learn Poison
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Poison:1b}}}] run function classes:mage/system/learnspell/earth/poison

#Learn Iron Flesh
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{IronFlesh:1b}}}] run function classes:mage/system/learnspell/earth/ironflesh

#Learn Gold Flesh
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{GoldFlesh:1b}}}] run function classes:mage/system/learnspell/earth/goldflesh

#Learn Diamond Flesh
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{DiamondFlesh:1b}}}] run function classes:mage/system/learnspell/earth/diamondflesh

#Learn Iron Golem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{IronGolem:1b}}}] run function classes:mage/system/learnspell/earth/irongolem

#Learn Teleport
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Teleport:1b}}}] run function classes:mage/system/learnspell/magic/teleport

#Learn Mend
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Mend:1b}}}] run function classes:mage/system/learnspell/magic/mend

#Learn Shield
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Shield:1b}}}] run function classes:mage/system/learnspell/magic/shield

#Learn Invisbility
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Invisibility:1b}}}] run function classes:mage/system/learnspell/magic/invisibility

#Learn Light
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Light:1b}}}] run function classes:mage/system/learnspell/magic/light


#Reset Right-click to avoid "Equip Wand in offhand message"
scoreboard players set @s cl.rightClick 0
