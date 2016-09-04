gml_pragma("forceinline");
scr_enemy_sprite_config() ; // sprites controll 

//Variables 

enemyspeed = 8 ; 
jumpspeed = 12 ; 
landed = false; 
dj = false ; 

canshoot = true; 
canchoose = true ; 

canmove = true ; 
canattack = true ; 
isattacking = false ; 
ishurting = 0 ; 

canguard = true ; 
guardpower = 5 ; 
isguarding = false ; 
guardtime = room_speed  * 3 ; 

obj_throw = obj_bayonetE ;
image_speed = 0.4 ;

attackindex = 0 ; 
attack = 1 ; 
hittype = 0 ; 

maxpower = POWER2SPECIAL ; 


state = "search" ; 


scr_enemy_facing() ; 
