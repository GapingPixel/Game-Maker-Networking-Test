gml_pragma("forceinline");
if (canguard)
{
    if (keyboard_check(guardkey) && landed)
    {
        sprite_index = block_sprite ; 
    }
}

if (keyboard_check_released(guardkey) && sprite_index == block_sprite)
{
    if (landed)
    {
        sprite_index= stance_sprite ; 
    }
}
