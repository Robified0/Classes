#Healing Spells
execute if entity @s[scores={cl.s.Heal=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Heal"}}}] at @s run function classes:healer/spells/heal/spell
execute if entity @s[scores={cl.s.Guard=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Guard"}}}] at @s run function classes:healer/spells/guard/spell
execute if entity @s[scores={cl.s.Inspire=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Inspire"}}}] at @s run function classes:healer/spells/inspire/spell
execute if entity @s[scores={cl.s.FireResist=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"FireResist"}}}] at @s run function classes:healer/spells/fireresist/spell
execute if entity @s[scores={cl.s.SpeedBoost=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"SpeedBoost"}}}] at @s run function classes:healer/spells/speedboost/spell
execute if entity @s[scores={cl.s.CureEffects=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"CureEffects"}}}] at @s run function classes:healer/spells/cureeffects/spell
execute if entity @s[scores={cl.s.Satiate=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Satiate"}}}] at @s run function classes:healer/spells/satiate/spell
execute if entity @s[scores={cl.s.HealCircle=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"HealCircle"}}}] at @s run function classes:healer/spells/healcircle/spell
execute if entity @s[scores={cl.s.Vitality=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Vitality"}}}] at @s run function classes:healer/spells/vitality/spell
execute if entity @s[scores={cl.s.Bless=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"Bless"}}}] at @s run function classes:healer/spells/bless/spell
execute if entity @s[scores={cl.s.HolyStrike=1..,cl.Mage.Armor=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Spell:"HolyStrike"}}}] at @s run function classes:healer/spells/holystrike/spell
