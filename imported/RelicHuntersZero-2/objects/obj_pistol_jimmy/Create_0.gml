///Main Attributes
event_inherited();

name = loc_key("WPNAME_PISTOLJIMMY");
rarity = K_RARITY_PISTOL_JIMMY;
rarityColor = rarity_get_color(rarity);
gui_info_weapon_create(instance_nearest(x,y,class_player),rarityColor,name);

sound = "pistol";
object = obj_pistol_jimmy;
shake_amount = 8;
projectile_speed = 52;
projectile_speed_decay = 0.4;
projectile_damage = 30;
projectile_range = 500;
projectile_power = 2;
projectile_recoil = 4;
accuracy = 6;
accuracy_aiming = 1;
ammo = 12;
ammo_type = type_light;
reload_time = 1500000;//room_speed*1.5;
fire_rate = 100000;//room_speed*0.1;

fire_automatic = false;
crosshair_recoil = 0.45;

joypadRumbleFactor = 0.6;

