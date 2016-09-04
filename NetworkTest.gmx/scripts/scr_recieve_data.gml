gml_pragma("forceinline");
var sock  = ds_map_find_value(async_load,"id") ; 

var buff = ds_map_find_value(async_load,"buffer") ; 

var cmd = buffer_read(buff,buffer_u8) ; 


if(cmd == SPAWN)
{
    if (serverType == "1vs1") {
        if(global.curPlayers >=1)
        {
            var pl = instance_create(512,244,obj_remotePlayer) ; 
            pl.name = buffer_read(buff,buffer_string) ; 
            pl.character = buffer_read(buff,buffer_string) ; 
            pl.ID = buffer_read(buff,buffer_u32) ; 
        }
        else
        {
            var pl = instance_create(512-32*10,244,obj_remotePlayer) ;
            pl.name = buffer_read(buff,buffer_string) ; 
            pl.character = buffer_read(buff,buffer_string) ; 
            pl.ID = buffer_read(buff,buffer_u32) ;  
        }
        
        ds_map_replace(clients,sock,pl);  
    }
}
else
if(cmd == KEY)
{
    var key = buffer_read(buff,buffer_s16) ; // this is the key 
    var state = buffer_read(buff,buffer_u8) ; // the state 
    
    if(key == vk_right)
    {
        key = RIGHT_KEY ; 
    }
    
    if(key == vk_left)
    {
        key = LEFT_KEY ; 
    }
    
    if(key == vk_up)
    {
        key = UP_KEY ; 
    }
    
    var pl = ds_map_find_value(clients,sock) ; 
    
    with(pl)
    {
        keys[key] = state ; 
    }
}
else
if(cmd == SPECTATE)
{
    spectatores ++ ; 
}
