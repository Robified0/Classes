execute as @s[scores={cl.s.Heal=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run function classes:healer/spells/heal/select

#Check for empty slot
execute as @s[scores={cl.emptySlot1=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run title @s times 20 100 20
execute as @s[scores={cl.emptySlot1=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b}}}] run title @s title {"text":"You have no spells equipped!","color":"red"}
