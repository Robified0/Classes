execute as @s[scores={cl.s.Heal=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/heal/select
execute as @s[scores={cl.s.Guard=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/guard/select
execute as @s[scores={cl.s.Inspire=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/inspire/select
execute as @s[scores={cl.s.FireResist=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/fireresist/select
execute as @s[scores={cl.s.SpeedBoost=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/speedboost/select
execute as @s[scores={cl.s.CureEffects=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/cureeffects/select
execute as @s[scores={cl.s.Satiate=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/satiate/select
execute as @s[scores={cl.s.HealCircle=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/healcircle/select
execute as @s[scores={cl.s.Vitality=5},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/vitality/select

#Check for empty slot
execute as @s[scores={cl.emptySlot5=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/system/wand/switch/emptyslot
