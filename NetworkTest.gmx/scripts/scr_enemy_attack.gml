if (attackindex != argument0)
{
    image_index = 0 ; 
    image_speed = 0.4 ; 
    attackindex = argument0 ; 
    if (landed)
    {
        if (attackindex == 1)
        {
            sprite_index = combo1_sprite ; 
            hittype = 1 ; 
        }
        if (attackindex == 2)
        {
            sprite_index = combo2_sprite ; 
            hittype = 1 ; 
        }
        if (attackindex == 3)
        {
            sprite_index = combo3_sprite ; 
            hittype = 2 ; 
        }
    }
    else
    {
        if (attackindex != 0)
        {
            sprite_index = air_attack_sprite ; 
            hittype = 2 ; 
        }
    }
    
    scr_enemy_hit() ; 
}
