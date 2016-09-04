gml_pragma("forceinline");
var type = ds_map_find_value(async_load,"type") ; 
var sock = ds_map_find_value(async_load,"socket") ; 

if(type == network_type_connect)
{
    // add a player 
    ds_list_add(sockets,sock) ;  
    ds_map_add(clients,sock,sock)  ; 
    connectedClients ++ ;    
}
else
if(type == network_type_disconnect)
{
    //remove a player 
    
    var pl = ds_map_find_value(clients,sock) ; 
    if (object_exists(pl))
    {
        with(pl)
        {
            instance_destroy() ; 
        }
    }
    
    var index = ds_list_find_index(sockets,sock) ; 
    ds_list_delete(sockets,index) ; 
    
    ds_map_delete(clients,sock) ; 
    
    connectedClients -- ;
    
}
