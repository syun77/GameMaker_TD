/// cost_upgrade(type, lv); アップグレードコストを取得する
var type = argument0;
var lv = argument1;

var cost = 0;
switch(type)
{
case UPGRADE_RANGE:
  // 射程範囲
  cost = 10 * power(1.5, (lv-1));
  break;
  
case UPGRADE_DAMAGE:
  // 攻撃威力
  cost = 20 * power(1.5, (lv-1));
  break;
  
case UPGRADE_FIRERATE:
  // 発射間隔
  cost = 15 * power(1.5, (lv-1));
  break;
}

return floor(cost);

