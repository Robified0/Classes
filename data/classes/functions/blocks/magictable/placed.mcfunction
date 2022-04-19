#Executing as the glow_item_frame that the player has placed down

#Try and stop the sound of glow item frame being placed
stopsound @a * minecraft:entity.glow_item_frame.place

#Play different one
playsound minecraft:block.stone.place block @a ~ ~ ~ 1 1
playsound minecraft:block.amethyst_cluster.hit block @a ~ ~ ~ 1 0.5

#Particles
particle minecraft:witch ~ ~-1 ~ 1 1 1 1 10 force

#Summon marker in middle of block, slightly elevated
execute align xyz run summon minecraft:marker ~0.5 ~0.75 ~0.5 {Tags:["cl.magicTable"]}

#Set the dropper
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Magic Table"}'}

#Summon the item frame with the custom Magic Table block inside.
summon glow_item_frame ~ ~ ~ {Tags:["cl.magicTable","cl.magicTablePlaced"],Facing:1b,Invulnerable:1b,Invisible:0b,Fixed:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:59999}}}

#Kill the original glowing item frame
kill @s
