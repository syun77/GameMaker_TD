/// enemy_getHp(nWave); 敵のHPを取得する
var nWave = argument0;

// base + (Wave数 / 3)
var base = 1;
return base + floor(nWave / 3);