##Executing as and at the Lapis Block on top of an enchanting table.

#Set up the Magic Table
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["cl.RuneTable"]}

#Set Magic Table block
setblock ~ ~ ~ barrel[facing=up]{Items:[{Slot:26b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:127,CustomModelData:10,cl.gui:1b}}]} replace

#Place Item Frame that holds the Resource Pack cover ;)
execute align xz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Tags:["cl.RuneTable","cl.RuneTablePlaced"],Facing:1b,Invulnerable:1b,Invisible:0b,Fixed:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:59998}}}

#Give player visual and auditory feedback
playsound minecraft:block.amethyst_cluster.hit block @a ~ ~ ~ 1 0.5
particle minecraft:witch ~ ~-1 ~ 1 1 1 1 10 force

#Grant advancement to player
advancement grant @p only minecraft:adventure/createrunetable

#For killing the item if it was run from the item drop
kill @s
