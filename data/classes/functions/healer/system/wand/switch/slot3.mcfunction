execute as @s[scores={cl.s.Heal=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/heal/select
execute as @s[scores={cl.s.Guard=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/guard/select
execute as @s[scores={cl.s.Inspire=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/inspire/select
execute as @s[scores={cl.s.FireResist=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/fireresist/select
execute as @s[scores={cl.s.SpeedBoost=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/speedboost/select
execute as @s[scores={cl.s.CureEffects=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/cureeffects/select
execute as @s[scores={cl.s.Satiate=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/satiate/select
execute as @s[scores={cl.s.HealCircle=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/healcircle/select
execute as @s[scores={cl.s.Vitality=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/vitality/select
execute as @s[scores={cl.s.Bless=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/bless/select
execute as @s[scores={cl.s.HolyStrike=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/holystrike/select
execute as @s[scores={cl.s.StopUndead=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/stopundead/select

#Check for empty slot
execute as @s[scores={cl.emptySlot3=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/system/wand/switch/emptyslot