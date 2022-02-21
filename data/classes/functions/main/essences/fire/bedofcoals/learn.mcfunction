## Learn Bed of Coals

#Kill the entity if the player doesn't have the advancement
execute unless entity @p[advancements={classes:mage/learnspell/fire/bedofcoals=true}] run kill @s

#Display message if player already knows the spell
execute as @p[advancements={classes:mage/learnspell/fire/bedofcoals=true}] run function classes:main/mana_system/learnedspell

#Play sounds
execute as @p[advancements={classes:mage/learnspell/fire/bedofcoals=false}] run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 0.8 0.5
execute as @p[advancements={classes:mage/learnspell/fire/bedofcoals=false}] run playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.4 1

#Message - learned spell!
execute as @p[advancements={classes:mage/learnspell/fire/bedofcoals=false}] run title @s times 0 40 5
execute as @p[advancements={classes:mage/learnspell/fire/bedofcoals=false}] run title @s subtitle ["",{"text":"You have learned ","color":"green"},{"text":"Bed of Coals!","color":"red"}]
execute as @p[advancements={classes:mage/learnspell/fire/bedofcoals=false}] run title @s title {"text":""}

#Grant the advancement to the player
advancement grant @p only classes:mage/learnspell/fire/bedofcoals
