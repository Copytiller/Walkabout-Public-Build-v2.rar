tCurrent=0;
t=0;
instance_create_depth(x,y,depth,oCursor);
spawnRange=10*(20*4);
randomize();
songs = [song1,song2,song3,song4,song5,song6,song7,song8,song9,song10,song11,song12,song13,song14,song15,song16,song17]
songPlay=songs[round(random_range(0.51,16.51))]
audio_play_sound(songPlay,1,99);


global.oDonuts=0;

pause=0
global.enemiesToSpawn = 10;
timer=0;