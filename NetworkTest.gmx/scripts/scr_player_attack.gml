if (canattack)
{
    if (keyboard_check_pressed(attacckkey))
    {
        if (landed)
        {  
                   if (sprite_index == stance_sprite)
                   {
                        image_index = 0 ; 
                        image_speed = 0.4 ; 
                        sprite_index = combo1_sprite ; 
                        hittype = 1 ;
                   }
                   
                   if (sprite_index == combo1_sprite && image_index >= image_number-2)
                   {
                        image_index = 0 ; 
                        image_speed = 0.4 ;
                        sprite_index = combo2_sprite ; 
                        hittype = 1 ;
                   }
                   if (sprite_index == combo2_sprite && image_index >= image_number-2)
                   {
                        image_index = 0 ; 
                        image_speed = 0.4 ;
                        sprite_index = combo3_sprite ; 
                        hittype = 2 ;
                   }
        }
        else
        if (!landed)
        {
            if (sprite_index != air_attack_sprite)
            {
                isattacking = true ; 
                image_index = 0 ; 
                image_speed = 0.4 ;
                sprite_index = air_attack_sprite ;  
                hittype = 2 ;  
            }
        }
        
        scr_player_hit() ; 
    }
}
