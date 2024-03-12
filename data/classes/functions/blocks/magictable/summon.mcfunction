##Executing as and at the Lapis Block on top of an enchanting table.

#Set up the Magic Table
#execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["cl.magicTable"]}
execute align xyz positioned ~0.5 ~1 ~0.5 run summon item_display ~ ~ ~ {Tags:["cl.magicTable"],brightness:{sky:6,block:6},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:59999}}}


#Set Magic Table block
setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"\\uF808\\uEff0","color":"white"}'} replace

#Place Item Frame that holds the Resource Pack cover ;)
#execute align xz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Tags:["cl.magicTable","cl.magicTablePlaced"],Facing:1b,Invulnerable:1b,Invisible:0b,Fixed:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:59999}}}


#Give player visual and auditory feedback
playsound minecraft:block.amethyst_cluster.hit block @a ~ ~ ~ 1 0.5
particle minecraft:witch ~ ~-1 ~ 1 1 1 1 10 force

#Grant advancement to player
advancement grant @p only minecraft:adventure/createmagictable

#For killing the item if it was run from the item drop
kill @s
