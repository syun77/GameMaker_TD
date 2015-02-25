/// infantry_getParam(type, lv) レベルに対応するパラメータを取得する
var type = argument0;
var lv = argument1;

switch(type)
{
case UPGRADE_RANGE:
  // 射程範囲 (= 8 + 4 * lv)
  return 8 + (4 * lv);
  
case UPGRADE_DAMAGE:
  // 攻撃威力 (= lv)
  return lv;
  
case UPGRADE_FIRERATE:
  // 発射間隔 (= 2sec * 0.9 ^ (lv-1))
  return (60 * 2) * power(0.9, (lv-1));
  
default: return 0;
}