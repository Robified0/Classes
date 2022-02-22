execute as @s[nbt={Item:{tag:{cl.ess.Poison:1b}}}] run function classes:main/essences/earth/poison/summon
execute as @s[nbt={Item:{tag:{cl.ess.IronFlesh:1b}}}] run function classes:main/essences/earth/ironflesh/summon
execute as @s[nbt={Item:{tag:{cl.ess.GoldFlesh:1b}}}] run function classes:main/essences/earth/goldflesh/summon
execute as @s[nbt={Item:{tag:{cl.ess.DiamondFlesh:1b}}}] run function classes:main/essences/earth/diamondflesh/summon
execute as @s[nbt={Item:{tag:{cl.ess.IronGolem:1b}}}] run function classes:main/essences/earth/irongolem/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
