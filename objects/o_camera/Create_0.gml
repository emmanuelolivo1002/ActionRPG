/// @description Camera variables

// Follow player
target_ = o_player;

// Width and height
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);

//Scale
scale_ = view_wport[0] / width_;