//enemy create
// movement
hspeed = 0
vspeed = 0
walk_speed = 2
change_direction = 0
change_0_to_1 = 0
snd_spotted = false
gra = 1
i = 0
hp_max= 25
hp = hp_max
coin = 2
mask_index = spr_ene3_idle
// wall
tile_wall = layer_tilemap_get_id("lay_ts_wall")

// 0: đứng im || 1: walk || 2: die || 3: tấn công ||  4: run
state = 0
// bộ đếm thời gian
step = 0

// play style
// Khoang cach ban
find_dis = 200
attack_dis = 20
sprite_idle = spr_ene3_idle
sprite_atk = spr_ene3_atk
sprite_run = spr_ene3_run
sprite_walk = spr_ene3_walk
