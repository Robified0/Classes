# Reset the GUI
setblock ~ ~ ~ air
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} replace

# Handle messaging
title @p[scores={cl.Class=3},distance=..2] times 20 100 20
title @p[scores={cl.Class=3},distance=..2] subtitle {"text":"You learned about Fire Charge.","color":"gold"}
title @p[scores={cl.Class=3},distance=..2] title {"text":""}

# Handle the scoreboard.
scoreboard players set @p[scores={cl.Class=3},distance=..2] cl.item.research.fire_charge 1

#Run the learnspell function on all players who are Mages (for good measure)
execute as @a[scores={cl.Class=3}] run function classes:blocks/magictable/research/mage/learnspell
