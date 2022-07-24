## Light
execute if entity @s[advancements={classes:mage/learnspell/magic/light=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:600}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/magic/light=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:600}}}] run function classes:mage/system/learnspell/magic/light

## Teleport
execute if entity @s[advancements={classes:mage/learnspell/magic/teleport=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:601}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/magic/teleport=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:601}}}] run function classes:mage/system/learnspell/magic/teleport

## Shield
execute if entity @s[advancements={classes:mage/learnspell/magic/shield=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:602}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/magic/shield=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:602}}}] run function classes:mage/system/learnspell/magic/shield

## Invisibility
execute if entity @s[advancements={classes:mage/learnspell/magic/invisibility=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:603}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/magic/invisibility=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:603}}}] run function classes:mage/system/learnspell/magic/invisibility

## Mend
execute if entity @s[advancements={classes:mage/learnspell/magic/mend=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:604}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/magic/mend=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:604}}}] run function classes:mage/system/learnspell/magic/mend
