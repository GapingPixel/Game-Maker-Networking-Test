gml_pragma("forceinline");
buffer_seek(buffer,buffer_seek_start,0) ; 

buffer_write(buffer,buffer_u8,KEY) ; 
buffer_write(buffer,buffer_s16,argument0) ; // argument 0 is the key 
buffer_write(buffer,buffer_u8,argument1) ; // argument 1 is the state of the key

network_send_packet(socket,buffer,buffer_tell(buffer))  ; 
