var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
layer_x("Background1",cam_x* 0.25);
layer_y("Background1", cam_y * 0.25);

layer_x("Background2",cam_x* 0.5);
layer_y("Background2", cam_y * 0.5);

layer_x("Background3",cam_x* 1.4);
layer_y("Background3", cam_y * 1.4);
