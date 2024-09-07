//enemy create
// movement
snd_spotted = false
hspeed = 0
vspeed = 0
hp_max= 50
hp = hp_max
coin = 2
gra = 1
i = 0
mask_index = spr_ene1_idle
// wall
tile_wall = layer_tilemap_get_id("lay_ts_wall")

// 0: đứng im || 1: tấn công ||  2: chết
state = 0
// bộ đếm thời gian
step = 0

// play style
// Khoang cach ban
find_dis = 300

sprite_idle = spr_ene1_idle
sprite_atk = spr_ene1_atk
sprite_bullet = spr_ene1_bullet