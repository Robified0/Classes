##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.Torch:1b}}}] run function classes:main/essences/fire/torch/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.FireShield:1b}}}] run function classes:main/essences/fire/fireshield/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.BedofCoals:1b}}}] run function classes:main/essences/fire/bedofcoals/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.FlameBurst:1b}}}] run function classes:main/essences/fire/flameburst/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
