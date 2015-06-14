/*LOADING BAR -  INCLUDE SPRITE 
This adds a sprite to the list of sprites to be loaded for the specified room.

argument0 - the sprite resource you want to add.
argument1 - the room index you want to add the sprite to.
If you don't specify a room for argument1, it will assume whichever room was last set by
the function lb_require_set_room(); - if this hasn't yet been called, it will be set to
the room that the lb_init() script was last called in.

RETURN: 1 if successful, -1 if failed (usually because sprite is already in the require list).*/

var _room;
if argument_count=2 then _room=argument[1]
else _room=global.lbRequireRoom;

if ds_list_find_index(global.lbRoomList,_room)=-1
{
    global.lbSpriteList[_room] = ds_list_create();
    ds_list_add(global.lbRoomList,_room);
}

if ds_list_find_index(global.lbSpriteList[_room],argument[0])=-1
{
    ds_list_add(global.lbSpriteList[_room],argument[0]);
    return 1;
}

return -1;