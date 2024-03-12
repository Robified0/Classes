#Set all gui items every half second
execute if score #cl.t.10Tick cl.t.Tick matches 10 run function classes:blocks/runetable2/gui_fill

#Detect if player is holding any of the UI items that displays the full UI overlay
execute if items entity @p player.cursor barrier[minecraft:custom_data={cl.gui:blank}] run function classes:blocks/runetable2/cursor/replace

#Detect if player clicked the magnifying glass
execute if items entity @p player.cursor barrier[minecraft:custom_data=]{cl.gui:inspect} run function classes:blocks/runetable2/cursor/inspect_runes

#Detect if player clicked the confirm button
execute if items entity @p player.cursor barrier[minecraft:custom_data=]{cl.gui:confirm} run function classes:blocks/runetable2/cursor/load_runes

#Detect if player has picked another equipment piece and remove the one from the barrel.
execute if items block ~ ~ ~ container.10 #classes:runeequipment if items entity @p player.cursor #classes:runeequipment run function classes:blocks/runetable2/cursor/load_runes
