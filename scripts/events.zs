import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractBlockEvent;

// Onions can't be planted
events.onPlayerRightClickBlock(function(event as PlayerInteractBlockEvent){
	val farmland = <minecraft:farmland>.definition.id as string;
	val onion = <xlfoodmod:onion>.definition.id as string;

	var block = event.block;
	if (block.definition.id != farmland) {
		return;
	}

	var item = event.player.currentItem;
	if (item) {
		if(item.definition.id == onion) {
   		event.cancel();
		}
	}
});