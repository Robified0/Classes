## Executing as player who has wand and incompatible armor equipped.

#Play sound effect
execute if entity @s[nbt={SelectedItem:{tag:{Spell:1b}}}] run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 0.5 2

#Display title
execute if entity @s[nbt={SelectedItem:{tag:{Spell:1b}}}] run title @s times 20 100 20
execute if entity @s[nbt={SelectedItem:{tag:{Spell:1b}}}] run title @s subtitle {"text":"Your armor weighs you down, and the spell fails.","color":"red"}
execute if entity @s[nbt={SelectedItem:{tag:{Spell:1b}}}] run title @s title {"text":""}
