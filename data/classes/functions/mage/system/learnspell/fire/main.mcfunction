## Torch
execute if entity @s[advancements={classes:mage/learnspell/fire/torch=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:200}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/fire/torch=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:200}}}] run function classes:mage/system/learnspell/fire/torch

## Bed of Coals
execute if entity @s[advancements={classes:mage/learnspell/fire/bedofcoals=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:201}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/fire/bedofcoals=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:201}}}] run function classes:mage/system/learnspell/fire/bedofcoals

## Flame Burst
execute if entity @s[advancements={classes:mage/learnspell/fire/flameburst=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:202}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/fire/flameburst=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:202}}}] run function classes:mage/system/learnspell/fire/flameburst

## Flame Burst
execute if entity @s[advancements={classes:mage/learnspell/fire/fireshield=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:204}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/fire/fireshield=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:204}}}] run function classes:mage/system/learnspell/fire/fireshield
