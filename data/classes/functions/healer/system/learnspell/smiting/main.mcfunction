## Holy Strike
execute if entity @s[tag=cl.knowsSpell.HolyStrike,nbt={SelectedItem:{tag:{cl.bookSpellTaught:900}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.HolyStrike,nbt={SelectedItem:{tag:{cl.bookSpellTaught:900}}}] run function classes:healer/system/learnspell/smiting/holystrike

## Stop Undead
execute if entity @s[tag=cl.knowsSpell.StopUndead,nbt={SelectedItem:{tag:{cl.bookSpellTaught:901}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.StopUndead,nbt={SelectedItem:{tag:{cl.bookSpellTaught:901}}}] run function classes:healer/system/learnspell/smiting/stopundead

## Bolt
execute if entity @s[tag=cl.knowsSpell.Bolt,nbt={SelectedItem:{tag:{cl.bookSpellTaught:902}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Bolt,nbt={SelectedItem:{tag:{cl.bookSpellTaught:902}}}] run function classes:healer/system/learnspell/smiting/bolt

## Light
execute if entity @s[tag=cl.knowsSpell.Light,nbt={SelectedItem:{tag:{cl.bookSpellTaught:903}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Light,nbt={SelectedItem:{tag:{cl.bookSpellTaught:903}}}] run function classes:healer/system/learnspell/smiting/light
