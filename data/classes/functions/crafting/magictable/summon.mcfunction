##Executing as and at the Lapis Block on top of an enchanting table.

#Set up the Magic Table
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["cl.magicTable"]}
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} replace
execute align xz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Tags:["cl.magicTable","cl.magicTablePlaced"],Facing:1b,Invulnerable:1b,Invisible:0b,Fixed:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:59999}}}
playsound minecraft:block.amethyst_cluster.hit block @a ~ ~ ~ 1 0.5
particle minecraft:witch ~ ~-1 ~ 1 1 1 1 10 force

#Give player advancement
advancement grant @p only classes:mage/craft/magictable

#For killing the item if it was run from the item drop
kill @s[type=item]
