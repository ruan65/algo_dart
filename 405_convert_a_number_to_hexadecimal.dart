import 'dart:math';

final compl = pow(2, 32);

String toHex(int num) {
  if(num == 0) return '0';
  if (num < 0) {
    return toHex(pow(2, 32).toInt() - num * -1);
  }
  final arr = '0123456789abcdef'.split('');

  String res = '';
  while (num > 0) {
    final rem = num % 16;
    res = '${arr[rem]}$res';
    num ~/= 16;
  }
  return res;
}

void main() {
  print(toHex(0));
}
