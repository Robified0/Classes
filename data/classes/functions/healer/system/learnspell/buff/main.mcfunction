## Guard
execute if entity @s[advancements={classes:healer/learnspell/buff/guard=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:800}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/buff/guard=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:800}}}] run function classes:healer/system/learnspell/buff/guard

## Fire Resist
execute if entity @s[advancements={classes:healer/learnspell/buff/fireresist=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:801}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/buff/fireresist=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:801}}}] run function classes:healer/system/learnspell/buff/fireresist

## Speed Boost
execute if entity @s[advancements={classes:healer/learnspell/buff/speedboost=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:802}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/buff/speedboost=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:802}}}] run function classes:healer/system/learnspell/buff/speedboost

## Inspire
execute if entity @s[advancements={classes:healer/learnspell/buff/inspire=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:803}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/buff/inspire=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:803}}}] run function classes:healer/system/learnspell/buff/inspire

## Vitality
execute if entity @s[advancements={classes:healer/learnspell/buff/vitality=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:804}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/buff/vitality=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:804}}}] run function classes:healer/system/learnspell/buff/vitality

## Bless
execute if entity @s[advancements={classes:healer/learnspell/buff/bless=true},nbt={SelectedItem:{tag:{cl.bookSpellTaught:805}}}] run function classes:main/mana_system/knownspell
execute if entity @s[advancements={classes:healer/learnspell/buff/bless=false},nbt={SelectedItem:{tag:{cl.bookSpellTaught:805}}}] run function classes:healer/system/learnspell/buff/bless
