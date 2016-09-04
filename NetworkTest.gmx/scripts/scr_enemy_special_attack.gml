gml_pragma("forceinline");
if (global.enemypower >= POWER2SPECIAL && landed && global.player.ishurting == 0 && global.player.landed)
{
    global.enemypower -= POWER2SPECIAL ; 
    image_index = 0 ; 
    sprite_index = special_sprite;  
    scr_enemy_facing() ; 
    if (global.enemy == obj_itachiE)
        {
         var ama ; 
         ama = instance_create(x,y-sprite_height/1.5,obj_amaterasuE) ; 
        }
        else
        if (global.enemy == obj_kakashiE || global.enemy == obj_nejiE)
        {
            hspeed += enemyspeed * (image_xscale / abs(image_xscale))  ; 
        }
}

if (global.enemy == obj_narutoE && sprite_index == special_sprite && image_index >= image_number-2)
        {
         var ras ; 
         if (!instance_exists(obj_rasenganE))
         {
             ras = instance_create(x,y,obj_rasenganE) ; 
             ras.speed = 10 ; 
             ras.image_xscale = image_xscale  ;
             if (image_xscale > 0){ras.direction = 0}else{ras.direction = 180}
         }
        }
