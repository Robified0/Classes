execute as @s[scores={cl.wand.slot3=700}] run function classes:abilities/spells/heal/select
execute as @s[scores={cl.wand.slot3=701}] run function classes:abilities/spells/healplosion/select
execute as @s[scores={cl.wand.slot3=702}] run function classes:abilities/spells/purify/select
execute as @s[scores={cl.wand.slot3=703}] run function classes:abilities/spells/prevention/select
execute as @s[scores={cl.wand.slot3=704}] run function classes:abilities/spells/mending/select
execute as @s[scores={cl.wand.slot3=800}] run function classes:abilities/spells/guard/select
execute as @s[scores={cl.wand.slot3=801}] run function classes:abilities/spells/fireresist/select
execute as @s[scores={cl.wand.slot3=802}] run function classes:abilities/spells/speedboost/select
execute as @s[scores={cl.wand.slot3=803}] run function classes:abilities/spells/inspire/select
execute as @s[scores={cl.wand.slot3=804}] run function classes:abilities/spells/vitality/select
execute as @s[scores={cl.wand.slot3=805}] run function classes:abilities/spells/bless/select
execute as @s[scores={cl.wand.slot3=900}] run function classes:abilities/spells/holystrike/select
execute as @s[scores={cl.wand.slot3=901}] run function classes:abilities/spells/stopundead/select
execute as @s[scores={cl.wand.slot3=902}] run function classes:abilities/spells/bolt/select
execute as @s[scores={cl.wand.slot3=903}] run function classes:abilities/spells/light/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
