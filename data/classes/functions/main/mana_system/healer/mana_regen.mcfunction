#Mana Regen (subject to change) ManaRegenSec is 20 * # of seconds for point of Mana to regen every # of seconds (60 = 1 point of Mana every 3 seconds)



execute if score @s cl.ManaRegenSec = @s cl.ManaRegenMax run scoreboard players add @s cl.ManaRegenSec 1
execute if score @s cl.ManaRegenSec = @s cl.ManaRegenMax run scoreboard players add @s cl.Mana 1
execute if score @s cl.ManaRegenSec = @s cl.ManaRegenMax run scoreboard players set @s cl.ManaRegenSec 0
execute if score @s cl.ManaRegenSec = @s cl.ManaRegenMax run scoreboard players set @s cl.ManaRegenSec 1
