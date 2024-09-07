//enemy create
// movement
hspeed = 0
vspeed = 0
walk_speed = 2
change_direction = 0
change_0_to_1 = 0
gra = 1
i = 0
hp_max= 100
hp = hp_max
coin = 3
count_attack = 0
time_to_attack = 0
mask_index = spr_ene9_idle
// wall
tile_wall = layer_tilemap_get_id("lay_ts_wall")

// 0: đứng im || 1: walk || 2: die || 3: tấn công ||  4: run
state = 0
// bộ đếm thời gian
step = 0

// play style
// Khoang cach ban

sprite_idle = spr_ene9_idle
sprite_atk = spr_ene9_atk
sprite_walk = spr_ene9_walk
bullet = obj_enemy9_danger
