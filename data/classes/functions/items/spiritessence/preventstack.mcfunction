## Modifies the NBT tag of the essences, to prevent merging mid-transform, which causes shorter transform times for newly thrown essences.

#Prevent player from picking up item after 3 seconds/when it's transforming.
execute if entity @s[scores={cl.item.spiritessence=3}] run data merge entity @s {PickupDelay:32767}

#Change tag to prevent stacking
execute if entity @s[scores={cl.item.spiritessence=4}] run data merge entity @s {Item:{tag:{cl.SpiritCount:1}}}
execute if entity @s[scores={cl.item.spiritessence=5}] run data merge entity @s {Item:{tag:{cl.SpiritCount:2}}}
execute if entity @s[scores={cl.item.spiritessence=6}] run data merge entity @s {Item:{tag:{cl.SpiritCount:3}}}
execute if entity @s[scores={cl.item.spiritessence=7}] run data merge entity @s {Item:{tag:{cl.SpiritCount:4}}}
execute if entity @s[scores={cl.item.spiritessence=8}] run data merge entity @s {Item:{tag:{cl.SpiritCount:5}}}

#Allow player to pick it up after it's transformed.
execute if entity @s[scores={cl.item.spiritessence=8}] run data merge entity @s {PickupDelay:10}
