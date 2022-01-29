## Executing as player who has right-clicked on a spell book.

#Learn Teleport - if not learned
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Teleport:1b}}},advancements={classes:mage/learnteleport=false}] run function classes:mage/system/learnspell/teleport

#Learn Teleport - if not learned
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Mend:1b}}},advancements={classes:mage/learnmend=false}] run function classes:mage/system/learnspell/mend
