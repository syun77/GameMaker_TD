/// gameMgr_stepMain(); ゲームのメイン処理
/// 更新
// インターバルタイマー更新
spawnIntervalTimer++;
if(spawnNumber > 0 and spawnIntervalTimer >= spawnInterval)
{
  // 敵を生成する
  instance_create(0, 0, obj_enemy);
  // 生成する敵の数を減らす
  spawnNumber--;
  // タイマーを減らす
  spawnIntervalTimer -= spawnInterval;
}

// カーソル更新
gameMgr_updateCursor();

// 購入ボタンの有効・無効をチェックする
var cost = cost_infantry();
var money = money_get();
obj_btnBuy.bEnabled = (cost <= money);

