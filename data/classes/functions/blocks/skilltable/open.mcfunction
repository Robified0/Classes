#Immediately lock the block. Super long string, so items actually can't be named it.
data merge block ~ ~ ~ {Lock:"t+YbX4A5d@&r_HA?egJU4Jb7eA&ctZKLYUM-pgx5pRZRKZ+RHK$x-X3wrTJ8zCs=uZ#!sCX%$7np@?$hE2&jPu!D5Y$xm*S95=rF"}

#Check for removed items on first page
execute if score @s cl.SkillTable.Page matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:10b}]} run function classes:blocks/skilltable/gui/logic/pages/magicspells
execute if score @s cl.SkillTable.Page matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function classes:blocks/skilltable/gui/logic/pages/firespells
execute if score @s cl.SkillTable.Page matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:12b}]} run function classes:blocks/skilltable/gui/logic/pages/waterspells
execute if score @s cl.SkillTable.Page matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:13b}]} run function classes:blocks/skilltable/gui/logic/pages/airspells
execute if score @s cl.SkillTable.Page matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:14b}]} run function classes:blocks/skilltable/gui/logic/pages/earthspells
execute if score @s cl.SkillTable.Page matches 0 unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} run function classes:blocks/skilltable/gui/logic/pages/holyspells

function classes:blocks/skilltable/gui/logic/itemcheck/main
