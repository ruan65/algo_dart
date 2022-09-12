import 'dart:math';

int reverse(int x) {
  final sign = x < 0 ? -1 : 1;
  int res = 0;
  x *= sign;

  while (x > 0) {
    res *= 10;
    res += x % 10;
    x ~/= 10;
  }
  res *= sign;

  if (res > pow(2, 31) - 1 || res < -pow(2, 31)) return 0;
  return res;
}

void main() {
  print(reverse(1534236469));
}
