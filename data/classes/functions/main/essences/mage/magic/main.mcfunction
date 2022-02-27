##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.Invisibility:1b}}}] run function classes:main/essences/mage/magic/invisibility/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Light:1b}}}] run function classes:main/essences/mage/magic/light/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Mend:1b}}}] run function classes:main/essences/mage/magic/mend/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Shield:1b}}}] run function classes:main/essences/mage/magic/shield/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Teleport:1b}}}] run function classes:main/essences/mage/magic/teleport/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
