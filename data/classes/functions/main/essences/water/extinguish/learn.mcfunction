### Learn Extinguish
## Executing as marker

#Kill the entity if the player doesn't have the advancement
execute if entity @p[advancements={classes:mage/learnspell/water/extinguish=false},scores={cl.Class=3}] run kill @s

#Display message if player already knows the spell
execute as @p[advancements={classes:mage/learnspell/water/extinguish=true},scores={cl.Class=3}] run function classes:main/mana_system/learnedspell

#Display message if player not Mage
execute unless score @p cl.Class matches 3 as @p run function classes:main/mana_system/cantlearn

#Play sounds
execute as @p[advancements={classes:mage/learnspell/water/extinguish=false},scores={cl.Class=3}] run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 0.8 0.5
execute as @p[advancements={classes:mage/learnspell/water/extinguish=false},scores={cl.Class=3}] run playsound minecraft:entity.boat.paddle_water player @s ~ ~ ~ 1 0.8

#Message - learned spell!
execute as @p[advancements={classes:mage/learnspell/water/extinguish=false},scores={cl.Class=3}] run title @s times 0 40 5
execute as @p[advancements={classes:mage/learnspell/water/extinguish=false},scores={cl.Class=3}] run title @s subtitle ["",{"text":"You have learned ","color":"green"},{"text":"Extinguish!","color":"blue"}]
execute as @p[advancements={classes:mage/learnspell/water/extinguish=false},scores={cl.Class=3}] run title @s title {"text":""}

#Grant the advancement to the player
advancement grant @p[scores={cl.Class=3}] only classes:mage/learnspell/water/extinguish
