#Healing Spells
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:71000}}}] at @s run function classes:healer/spells/heal/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:71001}}}] at @s run function classes:healer/spells/healcircle/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:71002}}}] at @s run function classes:healer/spells/satiate/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:71003}}}] at @s run function classes:healer/spells/cureeffects/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:71004}}}] at @s run function classes:healer/spells/mending/spell


# Protection
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:72000}}}] at @s run function classes:healer/spells/guard/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:72001}}}] at @s run function classes:healer/spells/fireresist/spell

# Buffs
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:73000}}}] at @s run function classes:healer/spells/speedboost/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:73001}}}] at @s run function classes:healer/spells/inspire/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:73002}}}] at @s run function classes:healer/spells/vitality/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:73003}}}] at @s run function classes:healer/spells/bless/spell

# Smiting
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:74000}}}] at @s run function classes:healer/spells/holystrike/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:74001}}}] at @s run function classes:healer/spells/stopundead/spell
