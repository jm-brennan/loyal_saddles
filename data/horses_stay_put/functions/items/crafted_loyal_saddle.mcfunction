recipe take @s horses_stay_put:loyal_saddle

advancement revoke @s only horses_stay_put:unlock_loyal_saddle/root

clear @s minecraft:knowledge_book 1

give @p minecraft:saddle{CustomModelData:1,Enchantments:[{id:"minecraft:loyalty", lvl:1}]} 1
