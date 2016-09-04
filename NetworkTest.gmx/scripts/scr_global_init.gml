//Servers Variables 
gml_pragma("forceinline");
global.servername = "Server" ; 
global.serverType = "1 VS 1"  ; // 1 vs 1 , 2 vs 2 
global.port = 7000 ; 
global.ip = "127.0.0.1" ; 
global.localip = "127.0.0.1" ; 
global.maxClients = 2 ; 
randomize() ; 
global.serverID = round(random(351431)) ; 
global.isPublic = false;  

//Client Variable 
global.ipToConnect = "127.0.0.1" ; 
global.localipToConnect = "127.0.0.1" ; 
global.portToConnect = 7000 ; 
global.playername = "GUEST" ; 
global.character = "naruto" ; 
