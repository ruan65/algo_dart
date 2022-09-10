void main() {
  print('777'.parseInt());
  final s1 = <int>{1};
  final s2 = <int>{1};
  print(s1 == s2);

  final m1 = {1:1};
  final m2 = {1:1};
  print(m1 == m2);
}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}
