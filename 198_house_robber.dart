import 'dart:math';

int rob_(List<int> nums) {
  if (nums.length == 1) return nums.first;
  if (nums.length == 2) {
    return max(nums.first, nums.last);
  }
  return max(nums.first + rob(nums.sublist(2)), rob(nums.sublist(1)));
}

int rob(List<int> nums) {
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

void main() {
  final lst = [1, 2, 3, 1, 5, 4, 3, 5, 1];
  print(rob_(lst));
  print(rob(lst));
}
