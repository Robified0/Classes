execute if score @s cl.t.RangerID = @a[scores={cl.Class=2,cl.i.usedPotion=1..},sort=nearest,limit=1] cl.t.RangerID run tag @s add cl.RangerPotion
execute if score @s cl.t.RangerID = @a[scores={cl.Class=2,cl.i.usedPotion=1..},sort=nearest,limit=1] cl.t.RangerID as @a[scores={cl.Class=2,cl.i.usedPotion=1..}] run function classes:ranger/system/potion/applyeffect
