## Modifies the NBT tag of the essences, to prevent merging mid-transform, which causes shorter transform times for newly thrown essences.

#Prevent player from picking up item after 3 seconds/when it's transforming.
execute if entity @s[scores={cl.track.Soul.time=3}] run data merge entity @s {PickupDelay:32767}

#Change tag to prevent stacking
execute if entity @s[scores={cl.track.Soul.time=4}] run data merge entity @s {Item:{tag:{cl.SoulCount:1}}}
execute if entity @s[scores={cl.track.Soul.time=5}] run data merge entity @s {Item:{tag:{cl.SoulCount:2}}}
execute if entity @s[scores={cl.track.Soul.time=6}] run data merge entity @s {Item:{tag:{cl.SoulCount:3}}}
execute if entity @s[scores={cl.track.Soul.time=7}] run data merge entity @s {Item:{tag:{cl.SoulCount:4}}}
execute if entity @s[scores={cl.track.Soul.time=8}] run data merge entity @s {Item:{tag:{cl.SoulCount:5}}}
execute if entity @s[scores={cl.track.Soul.time=8..}] run data remove entity @s Item.tag."cl.SoulCount"

#Allow player to pick it up after it's transformed.
execute if entity @s[scores={cl.track.Soul.time=8..}] run data merge entity @s {PickupDelay:10}
