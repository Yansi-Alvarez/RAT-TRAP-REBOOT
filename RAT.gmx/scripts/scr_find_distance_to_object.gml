///find_distance_to_object(x, y, angle, object, maxdist);

var arg_x = argument[0];
var arg_y = argument[1];
var arg_a = degtorad(argument[2]);
var arg_obj = argument[3];
var arg_max = argument[4];

var icount = 16;

var i = icount;

while !collision_line(x + i * cos(arg_a), y - i * sin(arg_a), x + (i - icount) * cos(arg_a), y - (i - icount) * sin(arg_a), arg_obj, 1, 1)
&& i <= arg_max
{
i += icount;
}

if i >= arg_max
{
return arg_max;
}

i -= icount;

icount = 1;
while !collision_line(x + i * cos(arg_a), y - i * sin(arg_a), x + (i - icount) * cos(arg_a), y - (i - icount) * sin(arg_a), arg_obj, 1, 1)
{
i += icount;
}
i -= icount;

return i;