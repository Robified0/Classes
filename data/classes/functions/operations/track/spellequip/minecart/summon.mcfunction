execute positioned ~ -70 ~ run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["cl.minecart.inventory"]}
execute positioned ~ -70 ~ run function classes:operations/track/spellequip/minecart/setinventory
execute positioned ~ -71 ~ run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["cl.minecart.hotbar"]}
execute positioned ~ -71 ~ run function classes:operations/track/spellequip/minecart/sethotbar
