if (landed)
{
    vspeed -=jumpspeed  ; 
    landed = false; 
    
    if (instance_exists(global.player))
    {
        if (!global.player.landed)
        {
            dj = choose(true,true,false) ; 
        }
        else
        {
            dj = false; 
        }
    }
    canchoose = true ; 
}
else
if (!landed && dj = true && vspeed >=-1)
{
    vspeed = 0 ; 
    vspeed -=jumpspeed ; 
    dj = false; 
    canchoose = true ; 
}
