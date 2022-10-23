## Torch
execute if entity @s[advancements={classes:healer/learnspell/smiting/holystrike=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:900}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/smiting/holystrike=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:900}}}] run function classes:healer/system/learnspell/smiting/holystrike

## Stop Undead
execute if entity @s[advancements={classes:healer/learnspell/smiting/stopundead=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:901}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/smiting/stopundead=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:901}}}] run function classes:healer/system/learnspell/smiting/stopundead

## Bolt
execute if entity @s[advancements={classes:healer/learnspell/smiting/bolt=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:902}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/smiting/bolt=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:902}}}] run function classes:healer/system/learnspell/smiting/bolt

## Light
execute if entity @s[advancements={classes:healer/learnspell/smiting/light=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:903}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/smiting/light=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:903}}}] run function classes:healer/system/learnspell/smiting/light
