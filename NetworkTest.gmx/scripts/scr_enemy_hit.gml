gml_pragma("forceinline");
if (hittype == 1 && global.player.sprite_index != global.player.special_sprite)
{
    if (image_xscale > 0)
    {
        instance_create(x+20,y-sprite_height/1.5,obj_enemy_normale_hit) ; 
    }
    else
    {
        instance_create(x-20,y-sprite_height/1.5,obj_enemy_normale_hit) ;     
    }
}
else
if (hittype == 2 && global.player.sprite_index != global.player.special_sprite)
{
    if (image_xscale > 0)
    {
        instance_create(x+20,y-sprite_height/1.5,obj_enemy_big_hit) ; 
    }
    else
    {
        instance_create(x-20,y-sprite_height/1.5,obj_enemy_big_hit) ;     
    }
}
