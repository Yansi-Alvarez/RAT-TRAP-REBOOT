/* 

This script will generate the contents of the level by checking each of the floors and seeing
if there are spots empty next to it to then spawn a wall there. Afterwards, each floor object
will have a chance at spawning what you put in the code (can be enemy, treasure, health, etc.)

argument0 = level's floor
argument1 = size of the grid (level maker's speed)
argument2 = level's walls

*/

//Create a wall instance to use to check for collision.
//var wall_placer = instance_create(argument0.x, argument0.y, argument2);
/*
//with all the floor objects
with (argument0) { 
//with (wall_placer) { 
    //selecting all the grids next to them
    for (i =- (argument1 + 1); i <= (argument1 + 1); i += (argument1 + 1)) { 
    
        for(j =- (argument1 + 1); j <= (argument1 + 1); j += (argument1 + 1)) {
            //Checks if there is no floor object next to itself
            if (place_empty(((x + i) - 1), ((y + j)- 1))) {
            //if (place_free(x, y)) {
                
                instance_create(x + i, y + j, argument2);
            }
        }    
    }
    //Destroy the wall instance when we are done using it to check for collision
    //instance_destroy();
}
*/
/*
with (argument0) { 
    //selecting all the grids next to them
    for (i =- (argument1 + 1); i <= (argument1 + 1); i += (argument1 + 1)) { 
    
        for(j =- (argument1); j <= (argument1); j += (argument1)) {
            //Checks if there is no floor object next to itself
            
            if (place_empty(((x + i)), (y + j))) {
                
                instance_create(((x + i) - 1), (y + j), argument2);
            }
            /*
            if (place_empty((x + i), (y + j))) {
                
                instance_create(((x + i) - 1), ((y + j) - 1), argument2);
            }
            
            if (place_empty(((x + i) - 1), ((y + j)- 1))) {
                
                instance_create(x + i, y + j, argument2);
            }
            
            if (place_empty(((x + i) - 1), ((y + j)- 1))) {
                
                instance_create(x + i, y + j, argument2);
            }
        }
    }*/
    /*
    for (i =- (argument1); i <= (argument1); i += (argument1)) { 
    
        for(j =- (argument1 + 1); j <= (argument1 + 1); j += (argument1 + 1)) {
            //Checks if there is no floor object next to itself
            
            if (place_empty(((x + i)), (y + j))) {
                
                instance_create((x + i), ((y + j) - 1), argument2);
            }
        }    
    }
}*/

//Creating the player
instance_create(room_width/2, room_height/2, obj_Rat_Head);
