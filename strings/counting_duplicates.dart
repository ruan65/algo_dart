// int duplicateCount(String text) {
//   your code goes below
// final map = letterCounter(text.toLowerCase());
// var result = 0;
// final values = map.entries.map((e) => e.value);
// for (int n in values) {
//   if (n > 1) {
//     result++;
//   }
// }
// return result;
// }

int duplicateCount(String text) {
  final map = {};
  for (final r in text.toLowerCase().runes) {
    if (map[r] == null) {
      map[r] = 1;
    } else {
      map[r]++;
    }
  }
  return map.values.fold(0, (v, e) => e > 1 ? ++v : v);
}

Map<String, int> letterCounter(String input) {
  final result = <String, int>{};
  for (String l in input.split('')) {
    if (result.containsKey(l)) {
      result[l] = result[l]! + 1;
    } else {
      result[l] = 1;
    }
  }
  return result;
}

void main() {
  final w1 = "aabBcde";
  print(duplicateCount(w1));
  print("bbc".runes);
}
