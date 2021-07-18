scoreboard players set @s cl.rightClick 1
scoreboard players set @s cl.Sneaking 1
scoreboard players set @s cl.currSpellSel 5

execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=5}] run function classes:mage/wand/basewand/switch/slot1


#item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"Starter"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:10004,Spell:"none",Wand:1b,Type:"Starter",display:{Name:'[{"text":"Wand","color":"dark_purple"}]'}}
#item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"WhiteStaff"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:601,Spell:"none",Wand:1b,Type:"WhiteStaff",display:{Name:'[{"text":"Wand","color":"dark_purple"}]'}}
#title @s times 20 100 20
#title @s subtitle {"text":"","color":"white"}
#title @s title {"text":"[]","color":"gold"}
