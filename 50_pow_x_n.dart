// double myPow(double x, int n) {
//   if (n == 0) {
//     return 1;
//   }
//   if (n == 1) {
//     return x;
//   }
//
//   final negative = n < 0;
//   double res = x * myPow(x, n.abs() - 1);
//   return negative ? 1 / res : res;
// }

double myPow(double x, int n) {
  final negative = n < 0;
  n = n.abs();
  double res = 1;
  while (n > 0) {
    res *= x;
    n--;
    if (res == 0) {
      return 0;
    }
  }
  return negative ? 1 / res : res;
}

void main() {
  // print(myPow(1.00001, 123456));
  print(myPow(0.00001, 2147483647));
}

// 1.00001
// 123456

// 0.00001
// 2147483647
