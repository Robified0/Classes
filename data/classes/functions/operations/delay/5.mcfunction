### Runs commands here once every half second (10 ticks)

#Run function when #cl.t.5Tick score hits 5 (operations/delay/main)

#Prevent Spell Drops
execute if entity @e[type=item,nbt={Item:{tag:{cl.m.Spell:1b}}}] as @e[type=item,nbt={Item:{tag:{cl.m.Spell:1b}}}] run function classes:operations/preventspelldrops

#Reset score
scoreboard players set #cl.t.5Tick cl.t.Tick 0
