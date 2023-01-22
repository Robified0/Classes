## Heal
execute if entity @s[tag=cl.knowsSpell.Heal,nbt={SelectedItem:{tag:{cl.bookSpellTaught:700}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Heal,nbt={SelectedItem:{tag:{cl.bookSpellTaught:700}}}] run function classes:healer/system/learnspell/healing/heal

## Healplosion
execute if entity @s[tag=cl.knowsSpell.Healplosion,nbt={SelectedItem:{tag:{cl.bookSpellTaught:701}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.HealPlosion,nbt={SelectedItem:{tag:{cl.bookSpellTaught:701}}}] run function classes:healer/system/learnspell/healing/healplosion

## Purify
execute if entity @s[tag=cl.knowsSpell.Purify,nbt={SelectedItem:{tag:{cl.bookSpellTaught:702}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Purify,nbt={SelectedItem:{tag:{cl.bookSpellTaught:702}}}] run function classes:healer/system/learnspell/healing/purify

## Prevention
execute if entity @s[tag=cl.knowsSpell.Prevention,nbt={SelectedItem:{tag:{cl.bookSpellTaught:703}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Prevention,nbt={SelectedItem:{tag:{cl.bookSpellTaught:703}}}] run function classes:healer/system/learnspell/healing/prevention

## Mending
execute if entity @s[tag=cl.knowsSpell.Mending,nbt={SelectedItem:{tag:{cl.bookSpellTaught:704}}}] run function classes:main/mana_system/knownspell
execute if entity @s[tag=!cl.knowsSpell.Mending,nbt={SelectedItem:{tag:{cl.bookSpellTaught:704}}}] run function classes:healer/system/learnspell/healing/mending
