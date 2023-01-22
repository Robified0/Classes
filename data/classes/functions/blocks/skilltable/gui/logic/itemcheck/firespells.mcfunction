data modify storage classes:skilltable Items set from block ~ ~ ~ Items
data modify storage classes:skilltable KeepItems set value []

#Save the appropriate slots
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:0b}]
data remove storage classes:skilltable Items[{Slot:0b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:1b}]
data remove storage classes:skilltable Items[{Slot:1b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:2b}]
data remove storage classes:skilltable Items[{Slot:2b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:3b}]
data remove storage classes:skilltable Items[{Slot:3b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:4b}]
data remove storage classes:skilltable Items[{Slot:4b}]
data modify storage classes:skilltable KeepItems append from storage classes:skilltable Items[{Slot:17b}]
data remove storage classes:skilltable Items[{Slot:17b}]

#Modify the shulker_box
data modify block -1 -64 0 Items set from storage classes:skilltable Items

#Give the loot back to the player closest to the marker
loot give @p mine -1 -64 0 minecraft:air{drop_contents:1b}

#Set the Rune Table back with the items it should have
data modify block ~ ~ ~ Items set from storage classes:skilltable KeepItems
