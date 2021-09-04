execute as @s[scores={cl.s.Heal=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/heal/select
execute as @s[scores={cl.s.Guard=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/guard/select
execute as @s[scores={cl.s.Inspire=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/inspire/select
execute as @s[scores={cl.s.FireResist=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/fireresist/select
execute as @s[scores={cl.s.SpeedBoost=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/speedboost/select
execute as @s[scores={cl.s.CureEffects=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/cureeffects/select
execute as @s[scores={cl.s.Satiate=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/satiate/select
execute as @s[scores={cl.s.HealCircle=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/healcircle/select
execute as @s[scores={cl.s.Vitality=4},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/vitality/select

#Check for empty slot
execute as @s[scores={cl.emptySlot4=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/system/wand/switch/emptyslot
