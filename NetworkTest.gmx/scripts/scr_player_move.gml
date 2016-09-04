gml_pragma("forceinline");
if (canmove)
{
    if (keyboard_check(right) && place_free(x+playerspeed,y))
    {
        image_xscale = abs(image_xscale) ; 
        x +=playerspeed ; 
        if (landed) {sprite_index = run_sprite }
    }
    if (keyboard_check(left) && place_free(x-playerspeed,y))
    {
        image_xscale = -abs(image_xscale) ; 
        x -=playerspeed ; 
        if (landed) {sprite_index = run_sprite }
    }

    if (keyboard_check_pressed(jump))
        {
            if (landed)
            {
                vspeed -=jumpspeed ; 
                dj = true ;    
                landed = false ;
            }
            else
            if (dj == true && vspeed >=-1 && !landed)
            {
                dj = false; 
                vspeed=  0 ;
                vspeed -=jumpspeed ; 
            }
        }
    
    
    if (keyboard_check_released(right) || keyboard_check_released(left))
    {
        if (landed)
        {
            sprite_index = stance_sprite ; 
        }
    }
}

if (!landed)
{
    if (vspeed >= 0)
    {
        sprite_index = fall_sprite ; 
    }
    else
    {
        sprite_index = jump_sprite ; 
    }
}
