#Healing Spells
execute if entity @s[scores={cl.s.Heal=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Heal"}}}] at @s run function classes:healer/spells/heal/spell
execute if entity @s[scores={cl.s.Guard=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Guard"}}}] at @s run function classes:healer/spells/guard/spell
