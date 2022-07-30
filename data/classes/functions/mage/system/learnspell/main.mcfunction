##Branch off based on element

#Fire
execute if entity @s[scores={cl.Class=3},nbt={SelectedItem:{tag:{cl.bookTeachElement:Fire}}}] run function classes:mage/system/learnspell/fire/main

#Air
execute if entity @s[scores={cl.Class=3},nbt={SelectedItem:{tag:{cl.bookTeachElement:Air}}}] run function classes:mage/system/learnspell/air/main

#Water
execute if entity @s[scores={cl.Class=3},nbt={SelectedItem:{tag:{cl.bookTeachElement:Water}}}] run function classes:mage/system/learnspell/water/main

#Earth
execute if entity @s[scores={cl.Class=3},nbt={SelectedItem:{tag:{cl.bookTeachElement:Earth}}}] run function classes:mage/system/learnspell/earth/main

#Magic
execute if entity @s[scores={cl.Class=3},nbt={SelectedItem:{tag:{cl.bookTeachElement:Magic}}}] run function classes:mage/system/learnspell/magic/main

#Display error if not Mage
execute unless score @s cl.Class matches 3 run function classes:mage/system/learnspell/wrongclass
