#Handle minecart #1
execute positioned ~ ~ ~ run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["cl.minecart.inventory"]}
execute positioned ~ ~ ~ run function classes:operations/track/spellequip/minecart/setinventory

#Handle Minecart #2
execute positioned ~ ~-1 ~ run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["cl.minecart.hotbar"]}
execute positioned ~ ~-1 ~ run function classes:operations/track/spellequip/minecart/sethotbar
