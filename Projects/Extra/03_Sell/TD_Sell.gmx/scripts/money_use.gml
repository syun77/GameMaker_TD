/// money_use(val); // お金を使う
var val = argument0;
obj_gameMgr.money -= val;
if(obj_gameMgr.money < 0)
{
  // 0より小さくならないようにする
  obj_gameMgr.money = 0;
}