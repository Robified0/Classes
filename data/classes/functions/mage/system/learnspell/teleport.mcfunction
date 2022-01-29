#Executing as player who has right-clicked on Teleport Spellbook

#Replace the book
item replace entity @s weapon.mainhand with minecraft:air

#Give advancement
advancement grant @s only classes:mage/learnteleport
