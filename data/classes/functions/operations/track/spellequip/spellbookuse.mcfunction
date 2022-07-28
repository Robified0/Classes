#Handle spell selection (summon minecart, copy items, write to inventory, set score, and then clear the left over slots in the hotbar).
#Quick reset
function classes:operations/track/spellequip/reset

#Use Shulker Boxes
execute in overworld run function classes:operations/track/spellequip/shulkers/main
