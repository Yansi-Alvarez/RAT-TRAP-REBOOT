/*LOADING BAR - INIT SCRIPT
Declares all the variables and things. Use this function before you call any other.*/

global.lbRequireRoom=room;
global.lbSpriteList[room]=ds_list_create();
global.lbloadRoom=room;
global.lbRoomList=ds_list_create();

global.lbBackCol=c_white;
global.lbBarCol=c_red;
global.lbWidth=.8;
global.lbHeight=.01;
global.lbYPos=.5; 

global.lbText="Loading"
global.lbFont=-1;
global.lbTextCol=-1;