## Guard
execute if entity @s[tag=cl.knowsSpell.Guard,nbt={SelectedItem:{tag:{cl.bookSpellTaught:800}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Guard,nbt={SelectedItem:{tag:{cl.bookSpellTaught:800}}}] run function classes:healer/system/learnspell/buff/guard

## Fire Resist
execute if entity @s[tag=cl.knowsSpell.FireResist,nbt={SelectedItem:{tag:{cl.bookSpellTaught:801}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.FireResist,nbt={SelectedItem:{tag:{cl.bookSpellTaught:801}}}] run function classes:healer/system/learnspell/buff/fireresist

## Speed Boost
execute if entity @s[tag=cl.knowsSpell.SpeedBoost,nbt={SelectedItem:{tag:{cl.bookSpellTaught:802}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.SpeedBoost,nbt={SelectedItem:{tag:{cl.bookSpellTaught:802}}}] run function classes:healer/system/learnspell/buff/speedboost

## Inspire
execute if entity @s[tag=cl.knowsSpell.Inspire,nbt={SelectedItem:{tag:{cl.bookSpellTaught:803}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Inspire,nbt={SelectedItem:{tag:{cl.bookSpellTaught:803}}}] run function classes:healer/system/learnspell/buff/inspire

## Vitality
execute if entity @s[tag=cl.knowsSpell.Vitality,nbt={SelectedItem:{tag:{cl.bookSpellTaught:804}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Vitality,nbt={SelectedItem:{tag:{cl.bookSpellTaught:804}}}] run function classes:healer/system/learnspell/buff/vitality

## Bless
execute if entity @s[tag=cl.knowsSpell.Bless,nbt={SelectedItem:{tag:{cl.bookSpellTaught:805}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Bless,nbt={SelectedItem:{tag:{cl.bookSpellTaught:805}}}] run function classes:healer/system/learnspell/buff/bless
