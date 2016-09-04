gml_pragma("forceinline");
if (hittype == 1)
{
    if (image_xscale > 0)
    {
        instance_create(x+20,y-sprite_height/1.5,obj_player_normale_hit) ; 
    }
    else
    {
        instance_create(x-20,y-sprite_height/1.5,obj_player_normale_hit) ;     
    }
}
else
if (hittype == 2)
{
    if (image_xscale > 0)
    {
        instance_create(x+20,y-sprite_height/1.5,obj_player_big_hit) ; 
    }
    else
    {
        instance_create(x-20,y-sprite_height/1.5,obj_player_big_hit) ;     
    }
}
