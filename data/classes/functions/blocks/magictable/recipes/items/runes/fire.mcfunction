loot insert 1 -64 0 loot classes:items/runes/fire/main
item replace block ~ ~ ~ container.16 from block 1 -64 0 container.0
data merge block 1 -64 0 {Items:[]}
xp add @p -1 levels

#Set Rune # (prevent stacking)
function classes:blocks/magictable/gui/logic/runenumber

#Run sound file
function classes:blocks/magictable/gui/logic/sounds/magic
