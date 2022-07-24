## Levitate
execute if entity @s[advancements={classes:mage/learnspell/air/levitate=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:400}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/air/levitate=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:400}}}] run function classes:mage/system/learnspell/air/levitate

## Slowfall
execute if entity @s[advancements={classes:mage/learnspell/air/slowfall=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:401}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/air/slowfall=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:401}}}] run function classes:mage/system/learnspell/air/slowfall

## Tail Wind
execute if entity @s[advancements={classes:mage/learnspell/air/tailwind=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:402}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/air/tailwind=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:402}}}] run function classes:mage/system/learnspell/air/tailwind

## Bunny Hop
execute if entity @s[advancements={classes:mage/learnspell/air/bunnyhop=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:403}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:mage/learnspell/air/bunnyhop=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:403}}}] run function classes:mage/system/learnspell/air/bunnyhop
