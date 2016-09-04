gml_pragma("forceinline");
var o  ; 

if (landed)
{
    if (keyboard_check_pressed(throwkey) && sprite_index == stance_sprite)
    {
        image_index = 0 ; 
        sprite_index = throw_sprite ; 
    }
    
}

    if (sprite_index == throw_sprite && image_index > image_number -2)
    {
    if (canshoot)
    {
        canshoot = false; 
        o = instance_create(x,y-sprite_height/1.5,obj_bayonet) ; 
        o.speed = 10 ; 
        o.dmg = 2 ; 
        if (image_xscale > 0)
        {
            o.image_xscale = abs(abs(o.image_xscale)) ; 
            o.direction = 0 ; 
        }
        else
        {
            o.image_xscale = -abs(abs(o.image_xscale)) ; 
            o.direction = 180 ; 
        }
    }
    }
