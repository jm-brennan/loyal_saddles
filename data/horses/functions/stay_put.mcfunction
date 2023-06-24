advancement revoke @s only horses:stay/root

say new! stay put function trigger 
data merge entity @e[type=horse,distance=..10,sort=nearest,limit=1] {NoAI:1b}


# confirmed works
#data merge entity @e[type=horse,distance=..10,sort=nearest,limit=1] {NoAI:1b}
#"nbt": "{SaddleItem:{id:\"minecraft:saddle\", tag:{Enchantments:[{id:\"minecraft:loyalty\", lvl:3s}]}}}"