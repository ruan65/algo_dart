// bool isAnagram(String s, String t) {
//   if (s.length != t.length) return false;
//
//   final letterCounter = <String, int>{};
//
//   for (var l in s.split('')) {
//     letterCounter.update(l, (n) => ++n, ifAbsent: () => 1);
//   }
//
//   for (var l in t.split('')) {
//     letterCounter.update(l, (n) => --n, ifAbsent: () => 1);
//   }
//
//   return letterCounter.values.every((e) => e == 0);
// }

bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  final az = 'az'.codeUnits;
  final List<int> charCount = List.filled(az.last - az.first + 1, 0);

  for (var ch in s.codeUnits) {
    charCount[ch - az.first] += 1;
  }

  for (var ch in t.codeUnits) {
    charCount[ch - az.first] -= 1;
  }
  for (int n in charCount) {
    if (n != 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print(isAnagram('zlap', 'kcqx'));
}
