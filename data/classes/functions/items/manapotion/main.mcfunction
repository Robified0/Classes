## (tick.json)

#Test for potion being held
scoreboard players set @a[predicate=classes:checkclass/spellcaster,predicate=classes:items/manapotion/manapotion] cl.i.ManaPotion 1

#Restore Mana if potion is drank
execute as @a[predicate=classes:checkclass/spellcaster,scores={cl.i.usedPotion=1..,cl.i.ManaPotion=1}] run function classes:items/manapotion/drank

#Remove score if potion not selected.
scoreboard players set @a[predicate=!classes:items/manapotion/manapotion] cl.i.ManaPotion 0
