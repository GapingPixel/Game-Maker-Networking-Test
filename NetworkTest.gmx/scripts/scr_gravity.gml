gml_pragma("forceinline");
if (place_free(x,y+1))
{
    gravity = argument0 ; 
}
else
{
    gravity = 0 ; 
}


if (vspeed >= 10 )
{
    vspeed = 10 ; 
}

return gravity  ; 
