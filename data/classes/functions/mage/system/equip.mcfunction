#Make sure 0 is avoided.
execute if entity @s[scores={cl.loadSpell=0}] run scoreboard players set @s cl.loadSpell 1

#Perform the equipping of fire spells
execute if entity @s[scores={cl.spellequip.Torch=0,cl.equipSpell=1}] run function classes:mage/spells/torch/equip
execute if entity @s[scores={cl.spellequip.BedofCoals=0,cl.equipSpell=2}] run function classes:mage/spells/bedofcoals/equip
execute if entity @s[scores={cl.spellequip.FlameBurst=0,cl.equipSpell=3}] run function classes:mage/spells/flameburst/equip
execute if entity @s[scores={cl.spellequip.Fireball=0,cl.equipSpell=4}] run function classes:mage/spells/fireball/equip
execute if entity @s[scores={cl.spellequip.Torch=0,cl.equipSpell=5}] run function classes:mage/spells/firebolt/equip
execute if entity @s[scores={cl.spellequip.Torch=0,cl.equipSpell=6}] run function classes:mage/spells/firebolt/equip

#Perform the equipping of water spells
execute if entity @s[scores={cl.spellequip.WaterStrike=0,cl.equipSpell=100}] run function classes:mage/spells/waterstrike/equip
execute if entity @s[scores={cl.spellequip.IceShard=0,cl.equipSpell=101}] run function classes:mage/spells/iceshard/equip
execute if entity @s[scores={cl.spellequip.ColdShield=0,cl.equipSpell=102}] run function classes:mage/spells/coldshield/equip
execute if entity @s[scores={cl.spellequip.DeepFreeze=0,cl.equipSpell=103}] run function classes:mage/spells/deepfreeze/equip
execute if entity @s[scores={cl.spellequip.SnowGolem=0,cl.equipSpell=104}] run function classes:mage/spells/snowgolem/equip
execute if entity @s[scores={cl.spellequip.WaterBrth=0,cl.equipSpell=105}] run function classes:mage/spells/waterbreath/equip
execute if entity @s[scores={cl.spellequip.DolpGrace=0,cl.equipSpell=106}] run function classes:mage/spells/dolpgrace/equip

#Perform the equipping of air spells
execute if entity @s[scores={cl.spellequip.Levitate=0,cl.equipSpell=200}] run function classes:mage/spells/levitate/equip
execute if entity @s[scores={cl.spellequip.SlowFall=0,cl.equipSpell=201}] run function classes:mage/spells/slowfall/equip
execute if entity @s[scores={cl.spellequip.TailWind=0,cl.equipSpell=202}] run function classes:mage/spells/tailwind/equip
execute if entity @s[scores={cl.spellequip.BunnyHop=0,cl.equipSpell=203}] run function classes:mage/spells/bunnyhop/equip
execute if entity @s[scores={cl.spellequip.WindWard=0,cl.equipSpell=204}] run function classes:mage/spells/windward/equip

#Perform the equipping of earth spells
execute if entity @s[scores={cl.spellequip.Poison=0,cl.equipSpell=300}] run function classes:mage/spells/poison/equip
execute if entity @s[scores={cl.spellequip.StoneFlesh=0,cl.equipSpell=301}] run function classes:mage/spells/stoneflesh/equip
execute if entity @s[scores={cl.spellequip.IronFlesh=0,cl.equipSpell=302}] run function classes:mage/spells/ironflesh/equip
execute if entity @s[scores={cl.spellequip.DiaFlesh=0,cl.equipSpell=303}] run function classes:mage/spells/diamondflesh/equip
execute if entity @s[scores={cl.spellequip.IronGolem=0,cl.equipSpell=304}] run function classes:mage/spells/irongolem/equip

#Perform the equipping of magic/non-elemental spells
execute if entity @s[scores={cl.spellequip.Light=0,cl.equipSpell=400}] run function classes:mage/spells/light/equip
execute if entity @s[scores={cl.spellequip.Teleport=0,cl.equipSpell=401}] run function classes:mage/spells/teleport/equip
execute if entity @s[scores={cl.spellequip.Shield=0,cl.equipSpell=402}] run function classes:mage/spells/shield/equip

#Reset equipSpell back to 0
scoreboard players set @s cl.equipSpell 0
