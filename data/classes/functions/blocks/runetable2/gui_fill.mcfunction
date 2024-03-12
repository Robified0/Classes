# Fill the first half of blocks
item replace block ~ ~ ~ container.0 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.1 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.2 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.3 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.4 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.5 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.6 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.7 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.8 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.9 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.11 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]

### This section is dependent on how many slots the item has, so we fill accordingly
# Start with emptying it if no items currently exist
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:12b}],cl.gui:blank} run item replace block ~ ~ ~ container.12 with minecraft:air
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:13b}],cl.gui:blank} run item replace block ~ ~ ~ container.12 with minecraft:air
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:14b}],cl.gui:blank} run item replace block ~ ~ ~ container.12 with minecraft:air
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:15b}],cl.gui:blank} run item replace block ~ ~ ~ container.12 with minecraft:air
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:16b}],cl.gui:blank} run item replace block ~ ~ ~ container.12 with minecraft:air

# If equipment has rune slots, only hide the ones that aren't available.
execute unless score @s cl.RuneTable.Slots matches 1.. run item replace block ~ ~ ~ container.12 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
execute unless score @s cl.RuneTable.Slots matches 2.. run item replace block ~ ~ ~ container.13 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
execute unless score @s cl.RuneTable.Slots matches 3.. run item replace block ~ ~ ~ container.14 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
execute unless score @s cl.RuneTable.Slots matches 4.. run item replace block ~ ~ ~ container.15 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
execute unless score @s cl.RuneTable.Slots matches 5.. run item replace block ~ ~ ~ container.16 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]

# Inspect or confirm button
item replace block ~ ~ ~ container.17 with barrier[minecraft:custom_model_data=4,minecraft:custom_data={cl.gui:inspect}]
item replace block ~ ~ ~ container.17 with barrier[minecraft:custom_model_data=5,minecraft:custom_data={cl.gui:confirm}]

# Last half of items
item replace block ~ ~ ~ container.18 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.19 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.20 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.21 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.22 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.23 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.24 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.25 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
item replace block ~ ~ ~ container.26 with barrier[minecraft:custom_model_data=1,minecraft:custom_data={cl.gui:blank}]
