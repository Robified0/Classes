recipe take @s classes:mage/crafting/spellbooks/starter

advancement revoke @s only classes:mage/crafting/spellbooks/starter

give @s written_book{HideFlags:127,SpellBook:1b,display:{Lore:['{"text":"A spell book where you can add and equip spells.","color":"dark_purple","bold":true,"italic":true}']},HideFlags:1,CustomModelData:60000,title:"Spell Book",author:"???",generation:3,resolved:0b,pages:['[{"text":"Spell Book","color":"dark_purple","bold":true,"italic":true},{"text":"\\n\\n"},{"text":"Equip Spell\\n","color":"dark_green","bold":true,"italic":false},{"text":"Select \\"Equip Spells\\" on the spell page. Shift+right-click with the wand to change spells!\\n\\n","color":"black","bold":false,"italic":false},{"text":"Equip Other Spells:\\n","color":"dark_green","bold":true,"italic":false},{"text":"Clear Wand","color":"black","bold":false,"italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set -1"}}]']} 1

clear @s minecraft:knowledge_book
