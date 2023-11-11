int divide(int dividend, int divisor) {
  bool sign = (dividend >= 0) == (divisor >= 0);
  dividend = dividend.abs();
  divisor = divisor.abs();
  var res = 0;
  while (dividend >= divisor) {
    var count = 0;
    while (dividend - (divisor << (count + 1)) >= 0) {
      count++;
    }
    res += 1 << count;
    dividend -= divisor << count;
  }
  res = sign ? res : -res;
  if(res == 1<<31) return (1<<31) - 1;
  return res;
}

void main() {
  print(divide(1, -1));
}
