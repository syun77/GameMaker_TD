/// gameMgr_updateBtnUpgrade(); アップグレードボタンの更新
if(selmode != SELMODE_UPGRADE)
{
  // 選択モードがアップグレードでなければ更新不要
  return 0;
}

// ■攻撃範囲ボタン
{
  // コスト
  var cost = cost_upgrade(UPGRADE_RANGE, target.lvRange);
  // 購入可能かどうか
  obj_btnRange.bEnabled = (cost <= money);
  // ラベル更新
  obj_btnRange.label = "RANGE($" + string(cost) + ")";
}

// ■攻撃威力ボタン
{
  // コスト
  var cost = cost_upgrade(UPGRADE_DAMAGE, target.lvDamage);
  // 購入可能かどうか
  obj_btnDamage.bEnabled = (cost <= money);
  // ラベル更新
  obj_btnDamage.label = "DAMAGE($" + string(cost) + ")";
}

// ■連射速度ボタン
{
  // コスト
  var cost = cost_upgrade(UPGRADE_FIRERATE, target.lvFirerate);
  // 購入可能かどうか
  obj_btnFirerate.bEnabled = (cost <= money);
  // ラベル更新
  obj_btnFirerate.label = "FIRERATE($" + string(cost) + ")";
}

