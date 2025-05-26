nvImage_angle = other.image_angle+180;
nvSprite = other.sprite_index;
nvXScale = other.image_xscale;
nvYScale = other.image_yscale;


instance_create_layer(other.x,other.y,"Char", O_TirParry);
instance_destroy(other);

instance_destroy();


