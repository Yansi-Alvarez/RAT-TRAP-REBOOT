/*Go to a room, loading the sprites first.
Argument0 - room index to load.

Returns 1 if successful.
Returns 0 if no sprites are assigned to that room (so no reason to load it)*/

if ds_list_find_index(global.lbRoomList,argument0)>-1
{
    draw_texture_flush();
    global.lbloadRoom=argument0;
    room_goto(rmLB_Load);
    return 1;
}

return 0;