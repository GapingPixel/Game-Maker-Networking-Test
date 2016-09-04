if (sprite_index == combo1_sprite ||
   sprite_index == combo2_sprite ||
   sprite_index == combo3_sprite )
   {
        isattacking = false; 
        //scr_enemy_hit
        //sprite_index= stance_sprite ; 
        if (attack < 3)
        {
            attack +=1 ; 
        }
        else
        {
            attack = 1 ; 
        }
   }

if (sprite_index == throw_sprite)
{
    sprite_index= stance_sprite ; 
    canshoot = true ; 
    canchoose = true ; 
}

if (sprite_index == air_attack_sprite)
{
    isattacking = false; 
    if (vspeed > 0 ) {sprite_index = fall_sprite} else
    {sprite_index = jump_sprite}
    //scr_enemy_hit
}

if (sprite_index == special_sprite)
{
    hspeed = 0 ; 
    state = "search" ; 
    sprite_index = stance_sprite ; 
    canchoose = true ; 
}

if (sprite_index == hurt1_sprite)
{
    ishurting = 0 ; 
    sprite_index = stance_sprite ; 
}
