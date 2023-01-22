data modify storage classes:skilltable Items set from block ~ ~ ~ Items
data modify storage classes:skilltable KeepItems set value []

#Save the wand slot and GUI overlay icons, always
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:10b}]
data remove storage classes:skilltable Items[{Slot:10b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:12b}]
data remove storage classes:skilltable Items[{Slot:12b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:14b}]
data remove storage classes:skilltable Items[{Slot:14b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:16b}]
data remove storage classes:skilltable Items[{Slot:16b}]

#Modify the shulker_box
data modify block -1 -64 0 Items set from storage classes:skilltable Items

#Give the loot back to the player closest to the marker
loot give @p mine -1 -64 0 minecraft:air{drop_contents:1b}

#Set the Rune Table back with the items it should have
data modify block ~ ~ ~ Items set from storage classes:skilltable KeepItems
