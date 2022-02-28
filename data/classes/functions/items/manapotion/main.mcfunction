#Test for potion being held
#scoreboard players set @a[predicate=classes:checkclass/spellcaster,predicate=classes:items/manapotion] cl.i.ManaPotion 1

#Restore Mana if potion is drank
execute as @a[predicate=classes:checkclass/spellcaster,predicate=classes:items/manapotion,scores={cl.i.usedPotion=1..}] run scoreboard players set @s cl.Mana 20

#Sound effect if potion drank
execute as @a[predicate=classes:checkclass/spellcaster,predicate=classes:items/manapotion,scores={cl.i.usedPotion=1..}] run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2

#Remove score if potion not selected.
#scoreboard players set @a[predicate=!classes:items/manapotion] cl.i.ManaPotion 0
