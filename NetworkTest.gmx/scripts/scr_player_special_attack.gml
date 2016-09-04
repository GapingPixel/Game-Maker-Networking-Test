if (global.playerpower > POWER2SPECIAL)
{
    if (landed && sprite_index == stance_sprite && keyboard_check_pressed(specialkey))
    {
        global.playerpower -=  POWER2SPECIAL ; 
        image_index = 0 ; 
        sprite_index = special_sprite ; 
    
        if (global.player == obj_itachi)
        {
         var ama ; 
         ama = instance_create(x,y-sprite_height/1.5,obj_amaterasu) ; 
        }
        else
        if (global.player == obj_kakashi || global.player == obj_neji)
        {
            hspeed += playerspeed * (image_xscale / abs(image_xscale))  ; 
        }
    }
}

        if (global.player == obj_naruto && sprite_index == special_sprite && image_index >= image_number-2)
        {
         var ras ; 
         if (!instance_exists(obj_rasengan))
         {
             ras = instance_create(x,y,obj_rasengan) ; 
             ras.speed = 10 ; 
             ras.image_xscale = image_xscale  ;
             if (image_xscale > 0){ras.direction = 0}else{ras.direction = 180}
         }
        }
        
