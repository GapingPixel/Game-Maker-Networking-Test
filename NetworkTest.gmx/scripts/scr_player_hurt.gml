
//argument 0 = damage type (0 = no damage , 1 = simple damage , 2 = huge damage)
gml_pragma("forceinline");
//argument1 = hp to lose
if (sprite_index == special_sprite)
exit ; 

if (ishurting != argument0)
{
    image_index = 0 ; 
    ishurting = argument0 ; 
    
    if (argument0 == 0)
    {
        hspeed = 0 ; 
    }
    else
    if (argument0 == 1)
    {
        global.playerhp -=argument1 ; 
        sprite_index = hurt1_sprite ; 
        
        if (canattacktime)
        {
            canattacktime = false ;
            alarm[3] = room_speed * 2 ; 
            canattack = false ;
        }
    }
    else
    if (argument0 == 2)
    {
        global.playerhp -=argument1 ;  
        sprite_index = hurt2_sprite ;    
        var dir ; 
        dir  = - (image_xscale/abs(image_xscale)) ; 
        hspeed += playerspeed * dir ; 
        vspeed =0 ; 
        vspeed -=jumpspeed ;         
    }
}
