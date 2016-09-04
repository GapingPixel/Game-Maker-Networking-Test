gml_pragma("forceinline");
if (sprite_index == combo1_sprite ||
   sprite_index == combo2_sprite ||
   sprite_index == combo3_sprite ||
   sprite_index == air_attack_sprite )
{
        isattacking = true ; 
}
else
{
    isattacking = false; 
}

if (sprite_index == block_sprite)
{
    isguarding = true ; 
}
else
{
    isguarding = false; 
}

if (sprite_index == throw_sprite)
{
    isshooting = true  ; 
}
else
{
    isshooting = false; 
    canshoot = true ; 
}


if (guardpower <= 0)
{
    canguard = false ;
}


if (canmove)
{
    scr_player_special_attack() ; 
    if (ishurting == 0 && sprite_index != special_sprite)
    {
     scr_player_throw() ;
     scr_player_attack() ; 
     scr_player_guard() ; 
    }
    
    if (!isattacking && !isguarding && !isshooting && ishurting == 0 && sprite_index != special_sprite)
    {
        scr_player_move() ; 
    }
}
