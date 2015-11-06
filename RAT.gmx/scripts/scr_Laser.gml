//scr_Laser(circle_radius, circle_outline, laser_direction, max_length, object_collision, weapon_using, color1, color2, laser_width, alarm_number, laser_speed);

circle_radius = argument[0];
circle_outline = argument[1];
laser_direction = argument[2];
max_length = argument[3];
object_collision = argument[4];
weapon_using = argument[5];
color1 = argument[6];
color2 = argument[7];
laser_width = argument[8];
alarm_number = argument[9];

draw_circle_colour(weapon_using.x, weapon_using.y, circle_radius, color1, color2, circle_outline);

//for(var i = 0; i <= max_length; i++){

for (var i = 0; i <= max_length; i++) {
    
    if (!alarm[alarm_number]) {
        
        var lx = x + lengthdir_x(i, laser_direction);
        var ly = y + lengthdir_y(i, laser_direction);
        draw_line_width_colour(weapon_using.x, weapon_using.y, lx, ly, laser_width, color1, color2);
        alarm[alarm_number] = 2;
        i -= 1;
    }
}

    //if(collision_point(lx, ly, object_collision, false, true)) {
        //break;
    //}

//}

//draw_line_width_colour(weapon_using.x, weapon_using.y, lx, ly, laser_width, color1, color2);
