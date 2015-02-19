/// gameMgr_changeSelMode(selmode); 選択モードを変更する
var mode = argument0;
with(obj_gameMgr)
{
  switch(mode)
  {
  case SELMODE_NONE:
    // ▼未選択モードへ切り替える
    // 購入ボタンを再表示
    obj_btnBuy.visible = true;
    break;
    
  case SELMODE_BUY:
    // ▼購入モードへ切り替える
    // 購入ボタンを非表示にする
    obj_btnBuy.visible = false;
    break;
  }
  
  // 選択モードを設定する
  selmode = mode;
}

