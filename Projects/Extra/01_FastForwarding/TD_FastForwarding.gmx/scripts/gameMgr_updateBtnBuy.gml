/// gameMgr_updateBtnBuy(); 購入ボタンの更新
// 購入ボタンの有効・無効をチェックする
var cost = cost_infantry();
var money = money_get();
obj_btnBuy.bEnabled = (cost <= money);

// 購入コスト表示を設定する
obj_btnBuy.label = "BUY($" + string(cost) + ")";