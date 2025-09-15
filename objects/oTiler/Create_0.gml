
randomize();
scale=0;
tiles = [t1,t2,t3,t4,t5,t4,t4,tFigure]
tileUse=tiles[round(random_range(1,7))]
tileUse2=tiles[round(random_range(1,7))]
tileToUse = tiles[round(random_range(1,7))]
tileToUse2 = tiles[round(random_range(1,7))]
i2=0;
for (i = 0; i <100; i += 1)
{
	while(i2<100)
	{
	
	createdItem= instance_create_depth(x+i2*scale, y+scale*i, 998, tileToUse)	
	createdItem.image_xscale=2;
	createdItem.image_yscale=2;
	createdItem2= instance_create_depth(x+i2*scale, y+scale*(i+1), 1000, tileToUse)
	createdItem2.image_yscale=image_yscale*0.5;
	createdShadow=instance_create_depth(x+i2*scale, y+scale*(i+1), 999, oTileShaded)	
	createdShadow.image_yscale=image_yscale*0.5;
	createdShadow.image_alpha=0.5
	
	if random_range(1,3)>2
	{
	createdItem.image_yscale=0 createdItem2.image_yscale=0 createdShadow.image_alpha=0
	if random_range(1,2)>1.2
		{
		//createdItem.image_yscale=0 createdItem2.image_yscale=0
		createdItem= instance_create_depth(x+i2*scale, y+scale*i, 998, tileToUse2)	
		createdItem2= instance_create_depth(x+i2*scale, y+scale*(i+1), 1000, tileToUse2)
		createdItem2.image_yscale=image_yscale*0.5;
		createdShadow=instance_create_depth(x+i2*scale, y+scale*(i+1), 999, oTileShaded)	
		createdShadow.image_yscale=image_yscale*0.5;
		createdShadow.image_alpha=0.5
		
		createdOverlay= instance_create_depth(x+i2*scale, y+scale*i, 997.5, oTile)	
		createdOverlay.image_alpha=0.5;
		//
		}
		else
		{
		createdItem2= instance_create_depth(x+i2*scale, y+scale*(i+1), 1000, oCollision)
		createdItem2.image_xscale=image_xscale*2;
		createdItem2.image_yscale=image_yscale*2;
		createdItem2.image_alpha=0.1;
		//createdItem2.instance_destroy(self);
		instance_destroy(createdItem2)
		}
	
	
	}
	
	//createdItem.image_xscale=((-2*(i%2))+1)
	//createdItem.image_alpha=0.5
	//createdItem.image_xscale=2;
	///createdItem.image_yscale=2;
	i2++;
	}
	i2=0;
}
 