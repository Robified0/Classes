## Heal
execute if entity @s[advancements={classes:healer/learnspell/healing/heal=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:700}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/healing/heal=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:700}}}] run function classes:healer/system/learnspell/healing/heal

## Heal Circle
execute if entity @s[advancements={classes:healer/learnspell/healing/healcircle=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:701}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/healing/healcircle=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:701}}}] run function classes:healer/system/learnspell/healing/healcircle

## Satiate
execute if entity @s[advancements={classes:healer/learnspell/healing/satiate=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:702}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/healing/satiate=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:702}}}] run function classes:healer/system/learnspell/healing/satiate

## Cure Effects
execute if entity @s[advancements={classes:healer/learnspell/healing/cureeffects=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:703}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/healing/cureeffects=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:703}}}] run function classes:healer/system/learnspell/healing/cureeffects

## Mending
execute if entity @s[advancements={classes:healer/learnspell/healing/mending=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:704}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/healing/mending=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:704}}}] run function classes:healer/system/learnspell/healing/mending
