/*LOADING BAR - BAR CUSTOMISE
Customise the parameters of the progress bar.
Providing no argument restores the default settings.

argument0 - Bar colour of loading screen (default white)
argument1 - Length of loading bar, as percentage/100 of room width (default 1)
    e.g, a value of 1 will make the loading bar as long as the room. .5 will make it half the length.
argument2 - Height of loading bar, as percentage/100 of room height (default .01)
    e.g, a value of .1 will make the loading bar 10% the height of the room.
argument3 - Y position of loading bar, as percentage/100 of room height (default .5)
*/

switch(argument_count)
{
    case 0:
        global.lbBarCol=c_white;
        global.lbWidth=1;
        global.lbHeight=.1;
        global.lbYPos=.5; 
    break;
    
    case 1:
        global.lbBarCol=argument[1];
    break;
    
    case 2:
        global.lbBarCol=argument[1];
        global.lbWidth=argument[2];
    break;
    
    case 3:
        global.lbBarCol=argument[1];
        global.lbWidth=argument[2];
        global.lbHeight=argument[3];
    break;
    
    case 4:
        global.lbBarCol=argument[1];
        global.lbWidth=argument[2];
        global.lbHeight=argument[3];
        global.lbYPos=argument[4];
    break;
}