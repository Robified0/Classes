#Reset scores, to act like the player is attempting to switch spells.
scoreboard players set @s cl.rightClick 1
scoreboard players set @s cl.Sneaking 1
scoreboard players set @s cl.currSpellSel 5

#Run switch to Slot1.
execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=5}] run function classes:healer/wand/switch/slot1
