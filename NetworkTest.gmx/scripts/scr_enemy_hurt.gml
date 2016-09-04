//argument1 = hp to lose
gml_pragma("forceinline");
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
        global.enemyhp -=argument1 ; 
        sprite_index = hurt1_sprite ; 
    }
    else
    if (argument0 == 2)
    {
        global.enemyhp -=argument1 ;  
        sprite_index = hurt2_sprite ;    
        var dir ; 
        dir  = - (image_xscale/abs(image_xscale)) ; 
        hspeed += enemyspeed * dir ; 
        vspeed =0 ; 
        vspeed -=jumpspeed ;         
    }
}
