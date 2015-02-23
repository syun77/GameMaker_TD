/// infantry_setParam(); // 砲台のパラメータを更新
// ■パラメータを更新する
// 射程範囲
range = infantry_getParam(UPGRADE_RANGE, lvRange);
// 攻撃威力
damage = infantry_getParam(UPGRADE_DAMAGE, lvDamage);
// 発射間隔
firerate = infantry_getParam(UPGRADE_FIRERATE, lvFirerate);

// ■コスト計算
// 射程範囲
cRange = cost_upgrade(UPGRADE_RANGE, lvRange);
// 攻撃威力
cDamage = cost_upgrade(UPGRADE_DAMAGE, lvDamage);
// 発射間隔
cFirerate = cost_upgrade(UPGRADE_FIRERATE, lvFirerate);
