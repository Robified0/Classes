#Executing as marker inside Rune Table (operations/delay/20)

#Mute barrel sounds
function classes:blocks/barrelsound

execute if block ~ ~ ~ barrel[open=true] run function classes:blocks/runetable/open

execute unless block ~ ~ ~ barrel[facing=up] run function classes:blocks/runetable/placing/destroy
