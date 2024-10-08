// randomizing the seed
randomize();

// Getting the room height and width
var getRoomHeight = round(room_height/16); 
var getRoomWidth = round(room_width/16);

//Getting the tile set and setting the id
var lay_id = layer_get_id("tset_grassAndStone");
var map_id = layer_tilemap_get_id(lay_id);

//Looping through each tile and selecting a random one to apply
for(var width = 0; width < getRoomWidth; width++){
	for(var height = 0; height < getRoomHeight; height++){
		var tile = random_range(1, 64);
	
		tilemap_set(map_id, tile, width, height);
	}
}




