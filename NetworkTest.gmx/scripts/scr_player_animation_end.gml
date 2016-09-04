gml_pragma("forceinline");
if (sprite_index == combo1_sprite ||
   sprite_index == combo2_sprite ||
   sprite_index == combo3_sprite )
   {
        if (landed)
        sprite_index = stance_sprite ; 
   }
   
   
if (sprite_index == air_attack_sprite)
{
    if (!landed)
    {
        sprite_index = fall_sprite ; 
    }
    else
    {
        sprite_index = stance_sprite ; 
    }
}

if (sprite_index == throw_sprite)
{
    canshoot = true ; 
    sprite_index = stance_sprite ; 
}

if (sprite_index == hurt1_sprite)
{
    ishurting = 0 ; 
    sprite_index = stance_sprite ; 
}

if (sprite_index == special_sprite)
{
    sprite_index = stance_sprite ; 
    hspeed = 0 ; 
}
