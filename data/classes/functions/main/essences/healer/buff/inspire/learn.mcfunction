### Learn Inspire
## Executing as marker

#Kill the entity if the player doesn't have the advancement
execute if entity @p[advancements={classes:healer/learnspell/buff/inspire=false},scores={cl.Class=4}] run kill @s

#Display message if player already knows the spell
execute as @p[advancements={classes:healer/learnspell/buff/inspire=true},scores={cl.Class=4}] run function classes:main/essences/healer/inspire/bless/known

#Display message if player not healer
execute unless score @p cl.Class matches 4 as @p run function classes:main/mana_system/cantlearn

#Play sounds
execute as @p[advancements={classes:healer/learnspell/buff/inspire=false},scores={cl.Class=4}] run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 0.8 0.5
execute as @p[advancements={classes:healer/learnspell/buff/inspire=false},scores={cl.Class=4}] run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 5 1

#Message - learned spell!
execute as @p[advancements={classes:healer/learnspell/buff/inspire=false},scores={cl.Class=4}] run title @s times 0 40 5
execute as @p[advancements={classes:healer/learnspell/buff/inspire=false},scores={cl.Class=4}] run title @s subtitle ["",{"text":"You have learned ","color":"green"},{"text":"Inspire!","color":"green"}]
execute as @p[advancements={classes:healer/learnspell/buff/inspire=false},scores={cl.Class=4}] run title @s title {"text":""}

#Grant the advancement to the player
advancement grant @p[scores={cl.Class=4}] only classes:healer/learnspell/buff/inspire
