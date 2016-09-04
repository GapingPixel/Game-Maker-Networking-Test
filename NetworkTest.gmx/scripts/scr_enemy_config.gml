gml_pragma("forceinline");
if (ishurting != 0)
{
    canmove = false ; 
}
else
{
    canmove = true ; 
}

if (guardpower <= 0)
{
    canguard = false ; 
}
else
{
    canguard = true ; 
}

if (!isguarding && sprite_index == block_sprite)
{
    sprite_index =stance_sprite ; 
}

if (distance_to_object(global.player > 10) && !instance_exists(obj_bayonet) && isguarding)
{
    isguaring = false; 
}

if (sprite_index == block_sprite)
{
    isguarding = true ; 
}
else
{
    isguaring = false ; 
}


if (canmove)
{
    if (global.enemypower >= maxpower)
    {
        if (canchoose)
        {
            state = "special" ; 
            canchoose = false  ; 
        }
    }
    else
    if (distance_to_object(global.player) > 10 && !isguaring)
    {
        if (canchoose && state != "special")
        {
         state = choose("search","throw","search","search") ; 
         canchoose = false ; 
         alarm[1] = room_speed  ; 
        }
    }
    else
    if (global.player.landed && global.player.ishurting != 2 && !global.player.isattacking)
    {
        if (canchoose && state != "special")
        {
            state = "attack" ; 
            canchoose =false ; 
            alarm[1] = room_speed ; 
        }
    }
    else
    if (global.player.landed && global.player.ishurting != 2 && global.player.isattacking && canguard)
    {
        if (canchoose && state != "special")
        {
            state = "guard" ; 
            canchoose = false ; 
            alarm[1] = room_speed / 4 ;
        }
        
    }
    else
    if (global.player.landed && global.player.ishurting != 2 && global.player.isattacking && !canguard)
    {
        if (canchoose && state != "special")
        {
            state = "attack" ; 
            canchoose = false ; 
            alarm[1] = room_speed ;
        }
    }
    
    switch(state)
    {
        case "search" : 
             if (sprite_index != special_sprite)
             {
                scr_enemy_move_to_player() ; 
             }
             break ; 
             
        case "attack" : 
             if (sprite_index != special_sprite)
             {
                scr_enemy_attack(attack) ; 
             }
             break ;
             
        case "throw" : 
             if (sprite_index != special_sprite)
             {
                scr_enemy_throw() ; 
             }
             break ;
             
        case "guard" : 
             if (sprite_index != special_sprite)
             {
                scr_enemy_guard() ; 
             }
             break ;
             
        case "special" : 
             scr_enemy_special_attack() ; 
             break ;
    }
    
}

if (!landed)
{
    if (sprite_index == stance_sprite)
    {
        sprite_index = fall_sprite ; 
    }
}
