##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.Blizzard:1b}}}] run function classes:main/essences/mage/water/blizzard/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.DeepFreeze:1b}}}] run function classes:main/essences/mage/water/deepfreeze/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.DolpGrace:1b}}}] run function classes:main/essences/mage/water/dolpgrace/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Extinguish:1b}}}] run function classes:main/essences/mage/water/extinguish/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.IceShard:1b}}}] run function classes:main/essences/mage/water/iceshard/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.IceWalker:1b}}}] run function classes:main/essences/mage/water/icewalker/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.SnowGolem:1b}}}] run function classes:main/essences/mage/water/snowgolem/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.WaterBreath:1b}}}] run function classes:main/essences/mage/water/waterbreath/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.WaterStrike:1b}}}] run function classes:main/essences/mage/water/waterstrike/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
