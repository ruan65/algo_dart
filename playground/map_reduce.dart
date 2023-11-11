import 'dart:math';

void main() {
  final pr = [2,3,4].reduce((value, element) => value * element);
  print(pr);
  print(25 * pow(0, -1));

  print(Map.from({1: [1,2,4]}));

  final lst = [1,2];

  lst.remove(1);
  print(lst);
}