/// enemy_spawn(nWave); 敵を生成する
var nWave = argument0;

with(instance_create(0, 0, obj_enemy))
{
  // HPを設定
  hp = enemy_getHp(nWave);
  hpMax = hp;
  
  // 所持金を設定
  money = enemy_getMoney(nWave);
  
  // 移動速度を設定
  path_speed = enemy_getSpeed(nWave);
}

