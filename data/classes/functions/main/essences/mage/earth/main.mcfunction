##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.Poison:1b}}}] run function classes:main/essences/mage/earth/poison/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.IronFlesh:1b}}}] run function classes:main/essences/mage/earth/ironflesh/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.GoldFlesh:1b}}}] run function classes:main/essences/mage/earth/goldflesh/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.DiamondFlesh:1b}}}] run function classes:main/essences/mage/earth/diamondflesh/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.IronGolem:1b}}}] run function classes:main/essences/mage/earth/irongolem/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
