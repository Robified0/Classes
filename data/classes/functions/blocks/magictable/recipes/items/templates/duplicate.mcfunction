#Duplicate book
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{cl.book.template:1b}}]} run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.10
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.book.template:1b}}]} run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.12
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{cl.book.template:1b}}]} run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.14
data modify block ~ ~ ~ Items[{Slot:16b}].Count set value 2

#Run sound file
function classes:blocks/magictable/gui/logic/sounds/bookduplicate
