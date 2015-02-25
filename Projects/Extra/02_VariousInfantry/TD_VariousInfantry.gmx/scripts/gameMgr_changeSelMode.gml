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
    // アップグレードボタンを非表示
    obj_btnRange.visible = false;
    obj_btnDamage.visible = false;
    obj_btnFirerate.visible = false;
    // 各砲台の購入ボタンを非表示にする
    obj_btnBuyNormal.visible = false;
    obj_btnBuyHoming.visible = false;
    obj_btnBuyLaser.visible = false;
    break;
    
  case SELMODE_SELINFANTRY:
    // ▼各砲台の購入モードへ切り替える
    // 購入ボタンを非表示
    obj_btnBuy.visible = false;
    // 各砲台の購入ボタンを表示にする
    obj_btnBuyNormal.visible = true;
    obj_btnBuyHoming.visible = true;
    obj_btnBuyLaser.visible = true;
    break;
    
  case SELMODE_BUY:
    // ▼購入モードへ切り替える
    // 購入ボタンを非表示にする
    obj_btnBuy.visible = false;
    // アップグレードボタンを非表示
    obj_btnRange.visible = false;
    obj_btnDamage.visible = false;
    obj_btnFirerate.visible = false;
    // 各砲台の購入ボタンを非表示にする
    obj_btnBuyNormal.visible = false;
    obj_btnBuyHoming.visible = false;
    obj_btnBuyLaser.visible = false;
    break;
    
  case SELMODE_UPGRADE:
    // ▼アップグレードモードへ切り替える
    // 購入ボタンを表示する
    obj_btnBuy.visible = true;
    // アップグレードボタンを表示する
    obj_btnRange.visible = true;
    obj_btnDamage.visible = true;
    obj_btnFirerate.visible = true;
    // 各砲台の購入ボタンを非表示にする
    obj_btnBuyNormal.visible = false;
    obj_btnBuyHoming.visible = false;
    obj_btnBuyLaser.visible = false;
  }
  
  // 選択モードを設定する
  selmode = mode;
}
