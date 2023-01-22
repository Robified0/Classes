##Running through root/main

# Summoning the Magic Table when block thrown on top of crafting table
## Handled in root/operations/delay/10 for performance


#Executing as marker inside Rune Table (operations/delay/20)

#Mute barrel sounds
function classes:blocks/barrelsound

execute if block ~ ~ ~ barrel[open=true] run function classes:blocks/skilltable/open

execute unless block ~ ~ ~ barrel[facing=up] run function classes:blocks/skilltable/destroy
