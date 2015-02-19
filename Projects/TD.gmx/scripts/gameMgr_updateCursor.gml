/// gameMgr_updateCursor(); カーソル情報を更新する
// ①GRID_SIZEにスナップする
var s = GRID_SIZE;
xcursor = floor(mouse_x / s) * s;
ycursor = floor(mouse_y / s) * s;
xcursor += s / 2;
ycursor += s / 2;

// ②カーソル位置のオブジェクトを取得する
cursorObj = collision_point(xcursor, ycursor, all, false, false);

// ③配置できるかどうかを判定する
if(cursorObj != noone)
{
  // 何かあるので配置できない
  return 0;
}

// ④配置判定
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
// 配置できる
instance_create(xcursor, ycursor, obj_infantry);

