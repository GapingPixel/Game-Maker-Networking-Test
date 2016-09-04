gml_pragma("forceinline");
scr_player_sprite_config() ; 

playerspeed = 8 ; 
jumpspeed = 12 ; 

landed = false ; 
dj = false; 
canmove = true ; 
canattack = true ; 
canattacktime = true ; 

isattacking = false; 
ishurting = 0 ; 

isguarding = false ; 
canguard = true ; 
guardpower = 5 ; 
guardtime = room_speed * 3 ; 

canshoot = true ; 
isshooting = false ; 

hittype = 0 ; 



right = vk_right ; 
left = vk_left ; 
jump = vk_up ; 
attacckkey = ord("G") ; 
guardkey = vk_down ; 
throwkey = ord("F") ; 
specialkey = ord("D") ; 
image_speed = 0.4 ; 
