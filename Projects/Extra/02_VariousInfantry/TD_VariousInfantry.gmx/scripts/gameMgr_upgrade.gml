/// gameMgr_upgrade(type); 砲台のアップグレードを実行する
// アップグレード種別
var type = argument0;
with(obj_gameMgr)
{
  // コストを取得してアップグレードする
  var cost = 0;
  switch(type)
  {
  case UPGRADE_RANGE:
    cost = target.cRange;
    target.lvRange++;
    break;
  case UPGRADE_DAMAGE:
    cost = target.cDamage;
    target.lvDamage++;
    break;
  case UPGRADE_FIRERATE:
    cost = target.cFirerate;
    target.lvFirerate++;
    break;
  }
  
  // お金を使う
  money_use(cost);
  
  with(target)
  {
    // パラメータを更新する
    infantry_setParam();
    // アップグレードエフェクトを生成する
    effect_create_above(ef_ellipse, x, y, 1, c_yellow);
  }
}