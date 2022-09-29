import 'dart:math';

int rob_(List<int> nums) {
  if (nums.length < 4) {
    return nums.reduce(max);
  }
  return max(nums.first + rob_(nums.sublist(2, nums.length - 1)),
      rob(List.from([...nums.sublist(1), nums[0]])));
}

// int rob(List<int> nums) {
//   if (nums.length < 4) {
//     return nums.reduce(max);
//   }
//   int pp = nums.first; // previous-previous
//   int p = nums[1]; // previous
//   for (int n in nums.sublist(2, nums.length - 1)) {
//     final tmp = p;
//     p = n + pp;
//     pp = max(tmp, pp);
//   }
//   final m1 = max(p, pp);
//   pp = nums[1]; // previous-previous
//   p = nums[2]; // previous
//   for (int n in nums.sublist(3)) {
//     final tmp = p;
//     p = n + pp;
//     pp = max(tmp, pp);
//   }
//   return max(m1, max(p, pp));
// }

int robLinear(List<int> nums) {
  if (nums.length == 1) return nums.first;
  int pp = nums.first; // previous-previous
  int p = nums[1]; // previous
  for (int n in nums.sublist(2)) {
    final tmp = p;
    p = n + pp;
    pp = max(tmp, pp);
  }
  return max(p, pp);
}

int rob(List<int> nums) {
  if (nums.length == 1) return nums.first;
  return max(
    robLinear(nums.sublist(0, nums.length - 1)),
    robLinear(nums.sublist(1)),
  );
}

void main() {
  final lst = [0, 0];
  // final lst = [1, 2, 3, 1, 5, 4, 3, 5, 1];
  print(rob_(lst));
  print(rob(lst));
}
