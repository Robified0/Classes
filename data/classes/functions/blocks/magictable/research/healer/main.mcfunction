##Executing as Magic Table marker, when a spellcaster is near, and item is found in dropper:
# blocks/magictable/recipes/main

# Nautilus Shell
execute unless score @p[scores={cl.Class=4},distance=..3] cl.item.research.nautilus_shell matches 1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:nautilus_shell"},{id:"minecraft:writable_book"}]} run say I see a shell and book 2 :)
