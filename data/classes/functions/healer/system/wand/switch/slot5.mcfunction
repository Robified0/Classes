execute as @s[scores={cl.wand.slot5=700}] run function classes:healer/spells/healing/heal/select
execute as @s[scores={cl.wand.slot5=701}] run function classes:healer/spells/healing/healcircle/select
execute as @s[scores={cl.wand.slot5=702}] run function classes:healer/spells/healing/satiate/select
execute as @s[scores={cl.wand.slot5=703}] run function classes:healer/spells/healing/cureeffects/select
execute as @s[scores={cl.wand.slot5=704}] run function classes:healer/spells/healing/mending/select
execute as @s[scores={cl.wand.slot5=800}] run function classes:healer/spells/buff/guard/select
execute as @s[scores={cl.wand.slot5=801}] run function classes:healer/spells/buff/fireresist/select
execute as @s[scores={cl.wand.slot5=802}] run function classes:healer/spells/buff/speedboost/select
execute as @s[scores={cl.wand.slot5=803}] run function classes:healer/spells/buff/inspire/select
execute as @s[scores={cl.wand.slot5=804}] run function classes:healer/spells/buff/vitality/select
execute as @s[scores={cl.wand.slot5=805}] run function classes:healer/spells/buff/bless/select
execute as @s[scores={cl.wand.slot5=900}] run function classes:healer/spells/smiting/holystrike/select
execute as @s[scores={cl.wand.slot5=901}] run function classes:healer/spells/smiting/stopundead/select
execute as @s[scores={cl.wand.slot5=902}] run function classes:healer/spells/smiting/bolt/select
execute as @s[scores={cl.wand.slot5=903}] run function classes:healer/spells/smiting/light/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot5=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot5=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot5=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
