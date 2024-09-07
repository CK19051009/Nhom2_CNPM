//enemy create
// movement
hspeed = 0
vspeed = 0
walk_speed = 5
i = 0
change_0_to_1 = 0
gra = 1
hp_max= 1000
hp = hp_max
skill_fire = false
skill_light = false
count_fire = 0
count_light = 0
mask_index = spr_boss_idle
tile_wall = layer_tilemap_get_id("lay_ts_wall")
// 0: đứng im || 1: walk || 2: die || 3: tấn công ||  4: run
state = "idle"
countdown_attack = 0

shake_x = 0
shake_y = 0
time_shake = 0