/// cost_infantry(); 砲台のコストを取得する
// 存在する砲台が多いほどコストが上昇する
var num = instance_number(obj_infantry);

// 砲台コスト＝ 8 * (1.3 ^ (砲台の存在数-1))
var base = 8;
var cost = 8 * power(1.3, (num-1));

// 小数点は切り捨て
return floor(cost);

