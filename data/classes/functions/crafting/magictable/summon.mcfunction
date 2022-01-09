execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["cl.magicTable"]}
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} replace

#For killing the item if it was run from the item drop
kill @s[type=item]
