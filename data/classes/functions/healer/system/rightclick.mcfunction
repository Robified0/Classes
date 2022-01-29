#Healing Spells
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60700}}}] at @s run function classes:healer/spells/heal/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60701}}}] at @s run function classes:healer/spells/healcircle/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60702}}}] at @s run function classes:healer/spells/satiate/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60703}}}] at @s run function classes:healer/spells/cureeffects/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60704}}}] at @s run function classes:healer/spells/mending/spell


# Protection/Buffs
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60800}}}] at @s run function classes:healer/spells/guard/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60801}}}] at @s run function classes:healer/spells/fireresist/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60802}}}] at @s run function classes:healer/spells/speedboost/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60803}}}] at @s run function classes:healer/spells/inspire/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60804}}}] at @s run function classes:healer/spells/vitality/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60805}}}] at @s run function classes:healer/spells/bless/spell

# Smiting
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60900}}}] at @s run function classes:healer/spells/holystrike/spell
execute if entity @s[scores={cl.Healer.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60901}}}] at @s run function classes:healer/spells/stopundead/spell
