# Handles conversion of item dropped by mob, to XP based on nbt XPValue of the item.
execute if entity @s[nbt={Item:{tag:{cl.XPValue:1}}}] at @s run summon experience_orb ~ ~ ~ {Value:1}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:2}}}] at @s run summon experience_orb ~ ~ ~ {Value:2}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:3}}}] at @s run summon experience_orb ~ ~ ~ {Value:3}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:4}}}] at @s run summon experience_orb ~ ~ ~ {Value:4}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:5}}}] at @s run summon experience_orb ~ ~ ~ {Value:5}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:10}}}] at @s run summon experience_orb ~ ~ ~ {Value:10}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:12}}}] at @s run summon experience_orb ~ ~ ~ {Value:12}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:20}}}] at @s run summon experience_orb ~ ~ ~ {Value:20}
execute if entity @s[nbt={Item:{tag:{cl.XPValue:50}}}] at @s run summon experience_orb ~ ~ ~ {Value:50}

#Kill the item
kill @s
