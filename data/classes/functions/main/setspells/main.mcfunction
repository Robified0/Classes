#Mage Spells
data modify storage classes:mage/spells/book pages set value ['[{"text":"Spell Book","color":"dark_purple","bold":true,"italic":true},{"text":"\\n\\n"},{"text":"Equip Spell\\n","color":"dark_green","bold":true,"italic":false},{"text":"Select \\"Equip Spells\\" on the spell page. Shift+right-click with the wand to change spells!\\n\\n","color":"black","bold":false,"italic":false},{"text":"Equip Other Spells:\\n","color":"dark_green","bold":true,"italic":false},{"text":"Clear Wand","color":"black","bold":false,"italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set -1"}}]']
function classes:main/setspells/mage/fire
function classes:main/setspells/mage/water
function classes:main/setspells/mage/air
function classes:main/setspells/mage/earth
function classes:main/setspells/mage/magic

#Healer Spells
data modify storage classes:healer/spells/book pages set value ['[{"text":"Spell Book","color":"dark_purple","bold":true,"italic":true},{"text":"\\n\\n"},{"text":"Equip Spell\\n","color":"dark_green","bold":true,"italic":false},{"text":"Select \\"Equip Spells\\" on the spell page. Shift+right-click with the wand to change spells!\\n\\n","color":"black","bold":false,"italic":false},{"text":"Equip Other Spells:\\n","color":"dark_green","bold":true,"italic":false},{"text":"Clear Wand","color":"black","bold":false,"italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set -1"}}]']
function classes:main/setspells/healer/healing
