##Executing as and at the Lapis Block on top of an enchanting table.

#Set up the Magic Table
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["cl.magicTable"]}

#Set Magic Table block
setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"\\uF808\\uEff0","color":"white"}'} replace

#Place Item Frame that holds the Resource Pack cover ;)
execute align xz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Tags:["cl.magicTable","cl.magicTablePlaced"],Facing:1b,Invulnerable:1b,Invisible:0b,Fixed:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:59999}}}

#Give player visual and auditory feedback
playsound minecraft:block.amethyst_cluster.hit block @a ~ ~ ~ 1 0.5
particle minecraft:witch ~ ~-1 ~ 1 1 1 1 10 force

#Give player advancement
execute if score @p cl.Class matches 3 run advancement grant @p only classes:mage/magictable
execute if score @p cl.Class matches 4 run advancement grant @p only classes:healer/magictable

#For killing the item if it was run from the item drop
kill @s
