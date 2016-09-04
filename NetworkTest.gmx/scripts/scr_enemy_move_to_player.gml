var target ; 
target = global.player ; 
attackindex = 0 ; 
attack = 1 ; 

//face the player 
scr_enemy_facing() ; 

//Moving 

if (instance_exists(target) && target.ishurting != 2)
{
    if (distance_to_object(target) < 10 && !target.landed   )
    {
        scr_enemy_jump() ; 
        scr_enemy_move(enemyspeed) ; 
        scr_enemy_moving_sprites() ; 
    }
    else
    if (distance_to_object(target) > 70)
    {
        //need to check for tha bayonet 
        if (instance_exists(obj_bayonet))
        {
            if (sign(obj_bayonet.x-x) == image_xscale/abs(image_xscale))
            {
                scr_enemy_jump() ; 
                scr_enemy_move(enemyspeed) ; 
                scr_enemy_moving_sprites() ; 
            }
            else
            {
                scr_enemy_move(enemyspeed) ; 
                scr_enemy_moving_sprites() ;
            }
        }
        else
        {
            scr_enemy_move(enemyspeed) ; 
            scr_enemy_moving_sprites() ; 
        }
    }
    else
    if (distance_to_object(target) > 10 && distance_to_object(target) < 70 && !target.isattacking)
    {
        scr_enemy_move(enemyspeed) ; 
        scr_enemy_moving_sprites() ;
    }
    else
    if (distance_to_object(target) > 10 && distance_to_object(target) < 70 && target.isattacking)
    {
        x +=0 ; 
        sprite_index = stance_sprite ; 
    }
    else
    {
        x +=0 ; 
        sprite_index = stance_sprite ;
    }
    
}
else
if (instance_exists(target) && target.ishurting == 2)
{
       x +=0 ; 
       sprite_index = stance_sprite ; 
}
