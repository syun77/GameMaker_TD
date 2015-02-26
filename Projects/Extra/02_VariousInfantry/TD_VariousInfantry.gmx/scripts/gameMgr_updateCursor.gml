/// gameMgr_updateCursor(); カーソル情報を更新する
// GRID_SIZEにスナップする
var s = GRID_SIZE;
xcursor = floor(mouse_x / s) * s;
ycursor = floor(mouse_y / s) * s;
xcursor += s / 2;
ycursor += s / 2;

// カーソル位置のオブジェクトを取得する
cursorObj = collision_point(xcursor, ycursor, all, false, false);

// アップグレードモードのチェック
if(cursorObj != noone)
{
  // 親オブジェクトのインデックスを取得する
  var parent = object_get_parent(cursorObj.object_index);
  if(cursorObj.object_index == obj_infantry or parent == obj_infantry)
  {
    if(mouse_check_button_pressed(mb_left))
    {
      // 砲台をクリックした
      // アップグレードモードにする
      gameMgr_changeSelMode(SELMODE_UPGRADE);
      // 対象の砲台を保存
      target = cursorObj;
      return 0;
    }
  }
}

// 配置できるかどうかを判定する
if(cursorObj != noone)
{
  // 何かあるので配置できない
  return 0;
}

// 選択モード判定
if(selmode != SELMODE_BUY)
{
  // 購入モードでなければ配置できない
  return 0;
}

// 配置判定
if(xcursor > 640)
{
  // UI領域には配置できない
  return 0;
}
if(mouse_check_button_pressed(mb_left) == false)
{
  // クリックしていないので配置できない
  return 0;
}
// お金を減らす
money_use(cost_infantry());
// 配置できる
instance_create(xcursor, ycursor, buyInfantry);
// 所持金チェック
if(money_get() < cost_infantry())
{
  // お金が足りないので未選択状態に戻る
  gameMgr_changeSelMode(SELMODE_NONE);
}