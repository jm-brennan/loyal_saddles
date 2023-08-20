# loyal_saddles
## A Minecraft datapack which prevents rideable entities from wandering while they are wearing a saddle enchanted with loaylty.

Using a horse (or another rideable entity) as a regular means of transport in Minecraft can be quite a hassle with the need to keep the horse from wandering while you are not riding it. Needing to carry a lead & fence, digging holes, or making stables keeps horses from being easy and hassle-free to use. This datapack seeks to remedy that.

This datapack works by disabling the entity ai (through the NoAI nbt tag) when a player rides an entity with a saddle enchanted with the loyalty enchantment. In this way, the player can ride a horse around, dismount, and the horse will not move from its last position when the player controlled it.

To re-enable the entity AI behavior, the player can simply punch/hit the horse and it will once again be able to wander (saying "giddyup!" at the same time IRL is optional).

To obtain a saddle enchanted with loyalty (which is not normally possible in survival), simply put a saddle and an avil in a crafting table (shapeless). A knowledge book will appear as the result of the crafting. Upon taking the knowledge book, it will be converted into a loyalty saddle. (The anvil, naturally, weighs the entity down such that it won't move. The players extraordinary strength is able to overcome this and ride normally, though. This is of course obvious to the reader.)

### Drawbacks
- An entity that is currently being "loyal" will do nothing to try to save themselves in the face of danger (drowning, ect.). Hitting them will re-enable their AI, so the player will want to keep in mind where they are leaving their horse/entity when dismounting
- A loyalty saddle cannot be placed on a horse by right-clicking the horse with the saddle when not riding the entity, this will convert the saddle to a regular saddle. The entity must be being ridden, and the saddle placed into the saddle slot in the entity's inventory for the saddle to work
- Because loyalty saddles have to be equipped through the entities inventory interface, a loyalty saddle cannot be applied to a strider by a player normally, it would have to be done through commands.
- A loyalty saddle will not go into effect until the player has mounted the entity with the saddle on. So to enable loyalty for the first time for an entity, the steps would look like: mount entity -> equip saddle through inventory interface -> dismount -> remount. Every mount thereafter will also re-loyalify the entity

### Demo
A demonstration showing:
- Crafting a loyal saddle with a saddle + anvil
- Equipping the saddle through the inventory interface
- Dismount, then mount again for first time taking effect
- Regular horse AI is disabled after dismounting. Horse will not wander, fall, be pushed around, follow golden carrots, ect.
- After being hit, horse AI is re-enabled
- Sorry the resolution is so bad github needed the gif to be under 10 mb

![loyal_saddles_demo_opt](https://github.com/jm-brennan/loyal_saddles/assets/31895058/ffe703ee-c707-4a90-af72-67a58debc401)

### Technical Details
The NoAI flag is set (to 1) every time the player starts to ride an entity with a loyalty saddle. When a player hits an entity whose NoAI value is set, *a* horse whose NoAI value is 1 and whose HurtTime value is 1 gets their NoAI value set back to 0. This means that in theory, if a player punches the horse (horse A) they meant to re-enable AI on, but there is another horse (horse B) whose NoAI value is set to 1 and is taking damage at the same time as horse A is getting punched, then it will be a toss up whether horse A or B will get unfrozen. This is an unfortunate consequence of how the datapack advancement triggers don't allow passing entity data to the functions that they call. If you know a good way around that, let me know, but hopefully this case is rare enough that it won't be a problem. If your horse doesn't get unstuck when punched, punch again (and be sure to heal the horse as needed). 

To install, clone this repo and copy the root loyal_saddles folder into the datapack folder of the world you want it on. You may need to `/reload` if you do this while the world is loaded. `/datapack list` can be used to see if the datapack has been installed properly.
