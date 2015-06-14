/*LOADING BAR - TEXT CUSTOMISE
Customise the parameters of the text shown in the loading screen.
Providing no argument restores the default settings.

argument0 - Custom text (default: "Loading")
argument1 - Font resource to use (default, uses whatever was set last)
argument2 - Colour (default: same as bar colour)
*/

switch(argument_count)
{
    case 0:
        global.lbText="Loading"
        global.lbFont=-1;
        global.lbTextCol=-1;
    break;
    
    case 1:
        global.lbText=argument[0];
    break;
    
    case 2:
        global.lbText=argument[0];
        global.lbFont=argument[1];
    break;
    
    case 3:
        global.lbText=argument[0];
        global.lbFont=argument[1];
        global.lbTextCol=argument[2];
    break;
}