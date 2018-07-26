/// @description Insert description here
// You can write your code in this editor
var flicker=random_range(-.01,.01);
x_radius+=flicker;
y_radius+=flicker;
x_radius = clamp(x_radius, 0.06, 1.04);
y_radius = clamp(y_radius, 0.06, 1.04);