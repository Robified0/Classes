execute as @s[scores={cl.Class=3}] run function classes:main/mana_system/mage/mana_regen
execute as @s[scores={cl.Class=4}] run function classes:main/mana_system/healer/mana_regen
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:1b}}}] run effect give @s minecraft:mining_fatigue 1 200 true
