#Increase score to queue up player
scoreboard players add #cl.track.shulkerStorage cl.track.shulkerStorage 1

#Reset score if it's over 50
execute if score #cl.track.shulkerStorage cl.track.shulkerStorage matches 51.. run scoreboard players set #cl.track.shulkerStorage cl.track.shulkerStorage 1

#Make player score match the current score of the fake player
scoreboard players operation @s cl.track.shulkerStorage = #cl.track.shulkerStorage cl.track.shulkerStorage

#Set book score
scoreboard players set @s cl.detect.book 1

#Run script to store current items in shulker box that matches score.
execute in overworld run function classes:operations/track/spellequip/shulkers/store/main

#Run change of inventory
execute if score @s cl.Class matches 3 run function classes:mage/system/spellequip/gui/main
execute if score @s cl.Class matches 4 run function classes:healer/system/spellequip/gui/main

#Clear Hotbar (must come last out of this section, otherwise the arguments will evaluate to false)
function classes:operations/track/spellequip/clear/hotbar
scoreboard players set @s cl.spell.equip.start 1
scoreboard players set @s cl.detect.book 0
