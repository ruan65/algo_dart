import 'dart:math';

const tc1 = [7,1,5,3,6,4];

void main() {
   print(maxProfit(tc1));
}

int maxProfit(List<int> prices) {
  if(prices.length < 2) return 0;
  var bi = 0;
  var res = 0;

  for(var i = 1; i < prices.length; i++) {
    if(prices[i] - prices[i-1] > prices[i] - prices[bi]) {
      bi = i-1;
    }
    res = (max(res, prices[i] - prices[bi]));
  }
  return res;
}