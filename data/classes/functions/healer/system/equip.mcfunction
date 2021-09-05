#Make sure 0 is avoided.
execute if entity @s[scores={cl.loadSpell=0}] run scoreboard players set @s cl.loadSpell 1

#Perform the equipping of healing spells
execute if entity @s[scores={cl.s.Heal=0,cl.equipSpell=500}] run function classes:healer/spells/heal/equip
execute if entity @s[scores={cl.s.Guard=0,cl.equipSpell=501}] run function classes:healer/spells/guard/equip
execute if entity @s[scores={cl.s.Inspire=0,cl.equipSpell=502}] run function classes:healer/spells/inspire/equip
execute if entity @s[scores={cl.s.FireResist=0,cl.equipSpell=503}] run function classes:healer/spells/fireresist/equip
execute if entity @s[scores={cl.s.SpeedBoost=0,cl.equipSpell=504}] run function classes:healer/spells/speedboost/equip
execute if entity @s[scores={cl.s.CureEffects=0,cl.equipSpell=505}] run function classes:healer/spells/cureeffects/equip
execute if entity @s[scores={cl.s.Satiate=0,cl.equipSpell=506}] run function classes:healer/spells/satiate/equip
execute if entity @s[scores={cl.s.HealCircle=0,cl.equipSpell=507}] run function classes:healer/spells/healcircle/equip
execute if entity @s[scores={cl.s.Vitality=0,cl.equipSpell=508}] run function classes:healer/spells/vitality/equip
execute if entity @s[scores={cl.s.Bless=0,cl.equipSpell=509}] run function classes:healer/spells/bless/equip
execute if entity @s[scores={cl.s.HolyStrike=0,cl.equipSpell=510}] run function classes:healer/spells/holystrike/equip
execute if entity @s[scores={cl.s.StopUndead=0,cl.equipSpell=511}] run function classes:healer/spells/stopundead/equip

#Reset equipSpell back to 0
scoreboard players set @s cl.equipSpell 0
