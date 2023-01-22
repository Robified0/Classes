#Place slimes for hitboxes
summon slime ~ ~1 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,Size:2,Tags:["cl.earthWall.noScore","cl.t.summoned","cl.spell.noPassthrough"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000,ShowParticles:0b}]}
summon slime ~ ~1 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,Size:2,Tags:["cl.earthWall.noScore","cl.spell.earthWall.row2","cl.t.summoned","cl.spell.noPassthrough"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000,ShowParticles:0b}]}
summon slime ~ ~1 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,Size:2,Tags:["cl.earthWall.noScore","cl.spell.earthWall.row3","cl.t.summoned","cl.spell.noPassthrough"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000,ShowParticles:0b}]}
scoreboard players set @e[type=minecraft:slime,tag=cl.earthWall.noScore] cl.spell.earthWall 15
scoreboard players set @e[type=minecraft:slime,tag=cl.earthWall.noScore,tag=cl.spell.earthWall.row2] cl.spell.earthWall.move 10
scoreboard players set @e[type=minecraft:slime,tag=cl.earthWall.noScore,tag=cl.spell.earthWall.row3] cl.spell.earthWall.move 17
tag @e[type=minecraft:slime,scores={cl.spell.earthWall=1..}] remove cl.earthWall.noScore

#Summon armor stands. Stands are needed as falling_block is invisible when being TPed up manually.
summon armor_stand ~ ~1.01 ~ {Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["cl.earthWall.noScore","cl.t.summoned","cl.spell.noPassthrough"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:sand"},Invulnerable:1b,NoGravity:1b,Time:300,DropItem:0b,Motion:[0.0,0.1,0.0],Tags:["cl.spell.earthWall","cl.t.summoned","cl.spell.noPassthrough"]}]}
summon armor_stand ~ ~1 ~ {Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["cl.earthWall.noScore","cl.spell.earthWall.row2","cl.t.summoned","cl.spell.noPassthrough"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:sand"},Invulnerable:1b,NoGravity:1b,Time:300,DropItem:0b,Motion:[0.0,0.1,0.0],Tags:["cl.spell.earthWall","cl.t.summoned","cl.spell.noPassthrough"]}]}
summon armor_stand ~ ~1 ~ {Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["cl.earthWall.noScore","cl.spell.earthWall.row3","cl.t.summoned","cl.spell.noPassthrough"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:sand"},Invulnerable:1b,NoGravity:1b,Time:300,DropItem:0b,Motion:[0.0,0.1,0.0],Tags:["cl.spell.earthWall","cl.t.summoned","cl.spell.noPassthrough"]}]}
scoreboard players set @e[type=minecraft:armor_stand,tag=cl.earthWall.noScore,tag=cl.spell.earthWall.row2] cl.spell.earthWall.move 11
scoreboard players set @e[type=minecraft:armor_stand,tag=cl.earthWall.noScore,tag=cl.spell.earthWall.row3] cl.spell.earthWall.move 21
scoreboard players set @e[type=minecraft:armor_stand,tag=cl.earthWall.noScore] cl.spell.earthWall 15
tag @e[type=minecraft:armor_stand,scores={cl.spell.earthWall=1..}] remove cl.earthWall.noScore
