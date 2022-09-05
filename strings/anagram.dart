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

// bool isAnagram(String s, String t) {
//   if (s.length != t.length) return false;
//
//   final az = 'az'.codeUnits;
//   final List<int> charCount = List.filled(az.last - az.first + 1, 0);
//
//   for (var ch in s.codeUnits) {
//     charCount[ch - az.first] += 1;
//   }
//
//   for (var ch in t.codeUnits) {
//     charCount[ch - az.first] -= 1;
//   }
//   for (int n in charCount) {
//     if (n != 0) {
//       return false;
//     }
//   }
//   return true;
// }

bool isAnagram(String a, String b) {
  if (a.length != b.length) return false;

  final al = a.split('');
  final bl = b.split('');
  for (var l in a.split('')) {
    if (bl.contains(l)) {
      al.remove(l);
      bl.remove(l);
    }
  }
  return al.isEmpty && bl.isEmpty;
}

// bool isAnagram(String a, String b) {
//   final as = a.split('');
//   final bs = b.split('');
//   as.sort();
//   bs.sort();
//   return as.toString() == bs.toString();
// }

void main() {
  print(isAnagram('', ''));
  print(isAnagram('a', 'a'));
  print(isAnagram('provider', 'riverpod'));

  // false
  print('********');

  print(isAnagram('a', 'b'));
  print(isAnagram('abb', 'aab'));
}
