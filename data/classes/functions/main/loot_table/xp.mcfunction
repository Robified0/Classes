# Handles conversion of item dropped by mob, to XP based on nbt XPValue of the item.
execute as @s[nbt={Item:{tag:{XPValue:1}}}] at @s run summon experience_orb ~ ~ ~ {Value:1}
execute as @s[nbt={Item:{tag:{XPValue:2}}}] at @s run summon experience_orb ~ ~ ~ {Value:2}
execute as @s[nbt={Item:{tag:{XPValue:3}}}] at @s run summon experience_orb ~ ~ ~ {Value:3}
execute as @s[nbt={Item:{tag:{XPValue:4}}}] at @s run summon experience_orb ~ ~ ~ {Value:4}
execute as @s[nbt={Item:{tag:{XPValue:5}}}] at @s run summon experience_orb ~ ~ ~ {Value:5}
execute as @s[nbt={Item:{tag:{XPValue:10}}}] at @s run summon experience_orb ~ ~ ~ {Value:10}
execute as @s[nbt={Item:{tag:{XPValue:12}}}] at @s run summon experience_orb ~ ~ ~ {Value:12}
execute as @s[nbt={Item:{tag:{XPValue:20}}}] at @s run summon experience_orb ~ ~ ~ {Value:20}
execute as @s[nbt={Item:{tag:{XPValue:50}}}] at @s run summon experience_orb ~ ~ ~ {Value:50}

#Kill the item
kill @s
