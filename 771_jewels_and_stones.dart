// You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
//
// Letters are case sensitive, so "a" is considered a different type of stone from "A".
//
//
//
// Example 1:
//
// Input: jewels = "aA", stones = "aAAbbbb"
// Output: 3
// Example 2:
//
// Input: jewels = "z", stones = "ZZ"
// Output: 0

// int numJewelsInStones(String jewels, String stones) {
//   var result = 0;
//
//   for (var letter in jewels.split('')) {
//     if (stones.contains(letter)) {
//       result++;
//     }
//   }
//
//   return result;
// }

// int numJewelsInStones(String jewels, String stones) {
//   final s = Set.from(jewels.codeUnits);
//   final list = stones.codeUnits;
//   var res = 0;
//   for (var i = 0; i < list.length; i++) {
//     if (s.contains(list[i])) res++;
//   }
//   return res;
// }

// int numJewelsInStones(String jewels, String stones) {
//   for (var ch in List.from(stones.split(''))) {
//     if (!jewels.contains(ch)) {
//       stones = stones.replaceAll(ch, '');
//     }
//   }
//   return stones.length;
// }

// int numJewelsInStones(String jewels, String stones) {
//   var res = 0;
//   for (String ch in List.from(jewels.split(''))) {
//     res += ch.allMatches(stones).length;
//   }
//   return res;
// }

int numJewelsInStones(String jewels, String stones) =>
    jewels.split('').fold(0, (sum, e) => sum + e.allMatches(stones).length);

void main() {
  print('a'.allMatches('abca').length);
}
