/// gameMgr_stepMain(); ゲームのメイン処理
// ゲームオーバー判定
if(lives <= 0)
{
  // ライフがなくなったのでゲームオーバー
  state = STATE_GAMEOVER;
  return 0;
}

// インターバルタイマー更新
spawnIntervalTimer++;
if(spawnNumber > 0 and spawnIntervalTimer >= spawnInterval)
{
  // 敵を生成する
  enemy_spawn(nWave);
  // 生成する敵の数を減らす
  spawnNumber--;
  // タイマーを減らす
  spawnIntervalTimer -= spawnInterval;
}

// クリア判定
if(spawnNumber <= 0 and instance_number(obj_enemy) == 0)
{
  // 敵がすべて出現した かつ 敵の生存数が「0」
  // クリアしたので、次のWaveに進む
  nWave++;
  state = STATE_WAIT;
  // ちょっと待つ
  timer = 2 * 60;
}