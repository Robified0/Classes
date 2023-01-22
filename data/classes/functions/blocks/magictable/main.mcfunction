##Running through root/main

#Mute barrel sounds
function classes:blocks/barrelsound

#Handle destruction
execute if block ~ ~ ~ barrel[open=true] run function classes:blocks/magictable/open

#Handle destruction
execute unless block ~ ~ ~ barrel[facing=up] run function classes:blocks/magictable/destroy
