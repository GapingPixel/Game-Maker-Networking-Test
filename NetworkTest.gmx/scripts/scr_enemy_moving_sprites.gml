if (landed)
{
    sprite_index = run_sprite ; 
}
else
{
    if (vspeed > 0)
    {
        sprite_index = fall_sprite ; 
    }
    else
    {
        sprite_index = jump_sprite ; 
    }
}
