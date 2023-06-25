# loyal_saddles
A Minecraft datapack which prevents rideable entities from wandering while they are wearing a loyalty-enchanted saddle.

Using a horse (or another rideable entity) as a regular means of transport in Minecraft can be quite a hassle with the need to keep the horse from wandering while you are not riding it. Needing to carry a lead & fence, digging holes, or making stables keeps horses from being easy and hassle-free to use. This datapack seeks to remedy that.

This datapack works by disabling the entity ai (through the NoAI nbt tag) when a player rides an entity with a saddle enchanted with the loyalty enchantment. In this way, the player can ride a horse around, dismount, and the horse will not move from its last position when the player controlled it.

To re-enable the entity AI behavior, the player can simply punch/hit the horse and it will once again be able to wander (saying "giddyup!" at the same time IRL is optional).

To obtain a saddle enchanted with loyalty (which is not normally possible in survival), simply put a saddle and an avil in a crafting table (shapeless). A knowledge book will appear as the result of the crafting. Upon taking the knowledge book, it will be converted into a loyalty saddle. (The anvil, naturally, weighs the entity down such that it won't move. The players extraordinary strength is able to overcome this and ride normally, though. This is of course obvious to the reader.)

### Drawbacks
- An entity that is currently being "loyal" will do nothing to try to save themselves in the face of danger. Hitting them will re-enable their AI, so the player will want to keep in mind where they are leaving their horse/entity when dismounting
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
