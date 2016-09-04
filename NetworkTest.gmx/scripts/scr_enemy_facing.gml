gml_pragma("forceinline");
var tar  ; 

tar = global.player ; 

if (instance_exists(tar))
{
    if (tar.x > x)
    {
        image_xscale = abs(image_xscale) ; 
    }
    else
    {
        image_xscale = -abs(image_xscale) ; 
    }
}

return image_xscale/abs(image_xscale) ; 
