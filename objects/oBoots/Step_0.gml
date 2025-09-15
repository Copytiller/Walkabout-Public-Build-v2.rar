if oPlayer.walking=1
{	bar+=1	}

if bar >100
{earthquake=instance_create_depth(oPlayer.x,oPlayer.y,oPlayer.depth-1,oEarthquake)
bar=0}


depth=oPlayer.depth;