var k ; 
if (sprite_index != throw_sprite && landed)
{
    image_index = 0 ; 
    sprite_index = throw_sprite ; 
}

if (sprite_index == throw_sprite && image_index >= image_number-1  )
{
    if (canshoot)
    {
        canshoot =!canshoot ; 
        k = instance_create(x,y-sprite_height+30,obj_throw) ; 
        k.speed = 10 ; 
        k.dmg = 2 ; 
        k.image_xscale = image_xscale; 
        k.image_xscale = image_yscale; 
        if (image_xscale > 0) {k.direction = 0;k.image_xscale = abs(k.image_xscale)}else {k.direction = 180;k.image_xscale = -abs(k.image_xscale)}
        canshoot = false ; 
    }
}


