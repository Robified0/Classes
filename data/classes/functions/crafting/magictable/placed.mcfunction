stopsound @a * minecraft:entity.glow_item_frame.place
playsound minecraft:block.stone.place block @a ~ ~ ~ 1 1
execute align xz run summon minecraft:marker ~0.5 ~0.75 ~0.5 {Tags:["cl.magicTable"]}
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Magic Table"}'}
summon glow_item_frame ~ ~ ~ {Tags:["cl.magicTable","cl.magicTablePlaced"],Facing:1b,Invulnerable:1b,Invisible:0b,Fixed:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:59999}}}
kill @s
