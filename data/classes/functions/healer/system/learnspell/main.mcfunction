##Branch off based on element

#Buff
execute if entity @s[scores={cl.Class=4},nbt={SelectedItem:{tag:{cl.bookTeachElement:Buff}}}] run function classes:healer/system/learnspell/buff/main

#Healing
execute if entity @s[scores={cl.Class=4},nbt={SelectedItem:{tag:{cl.bookTeachElement:Healing}}}] run function classes:healer/system/learnspell/healing/main

#Smiting
execute if entity @s[scores={cl.Class=4},nbt={SelectedItem:{tag:{cl.bookTeachElement:Smiting}}}] run function classes:healer/system/learnspell/smiting/main

#Display error if not Mage
execute unless score @s cl.Class matches 4 run function classes:healer/system/learnspell/wrongclass
