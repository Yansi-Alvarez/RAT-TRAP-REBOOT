var goal, i, current, path, realpath, current, loop, all_nodes;

goal = argument0;
all_nodes = argument1;

path = ds_list_create()

ds_list_add(path, ds_list_find_value(goal, 1))//add y
ds_list_add(path, ds_list_find_value(goal, 0))//add x

current = ds_list_find_value(goal, 2)

while(current != -1){

    ds_list_add(path,ds_list_find_value(current,1))//add y
    ds_list_add(path,ds_list_find_value(current,0))//add x
    current = ds_list_find_value(current,2)
}

real_path = ds_list_create()
loop = ds_list_size(path)

for(i = 0; i < loop; i += 1){
    ds_list_add(real_path, ds_list_find_value(path, ds_list_size(path) - 1))
    
    //show_message(ds_list_find_value(path,ds_list_size(path)-1))
    ds_list_delete(path, ds_list_size(path)-1)
}

for(i = 0; i < ds_list_size(allnodes); i += 1){
    ds_list_destroy(ds_list_find_value(allnodes, i))
}

ds_list_destroy(all_nodes)
ds_list_destroy(path)

return real_path
