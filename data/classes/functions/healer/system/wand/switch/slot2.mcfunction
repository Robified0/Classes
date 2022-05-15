execute as @s[scores={cl.wand.slot2=700}] run function classes:healer/spells/healing/heal/select
execute as @s[scores={cl.wand.slot2=701}] run function classes:healer/spells/healing/healcircle/select
execute as @s[scores={cl.wand.slot2=702}] run function classes:healer/spells/healing/satiate/select
execute as @s[scores={cl.wand.slot2=703}] run function classes:healer/spells/healing/cureeffects/select
execute as @s[scores={cl.wand.slot2=704}] run function classes:healer/spells/healing/mending/select
execute as @s[scores={cl.wand.slot2=800}] run function classes:healer/spells/buff/guard/select
execute as @s[scores={cl.wand.slot2=801}] run function classes:healer/spells/buff/fireresist/select
execute as @s[scores={cl.wand.slot2=802}] run function classes:healer/spells/buff/speedboost/select
execute as @s[scores={cl.wand.slot2=803}] run function classes:healer/spells/buff/inspire/select
execute as @s[scores={cl.wand.slot2=804}] run function classes:healer/spells/buff/vitality/select
execute as @s[scores={cl.wand.slot2=805}] run function classes:healer/spells/buff/bless/select
execute as @s[scores={cl.wand.slot2=900}] run function classes:healer/spells/smiting/holystrike/select
execute as @s[scores={cl.wand.slot2=901}] run function classes:healer/spells/smiting/stopundead/select
execute as @s[scores={cl.wand.slot2=902}] run function classes:healer/spells/smiting/bolt/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot2=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot2=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot2=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
