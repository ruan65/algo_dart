import 'dart:math';

int rob(List<int> nums) {
  if (nums.length == 1) return nums.first;
  if (nums.length == 2) {
    return max(nums.first, nums.last);
  }
  return max(nums.first + rob(nums.sublist(2)), rob(nums.sublist(1)));
}

void main() {
  print(rob([1, 2, 3, 1, 5, 4, 3, 5, 1]));
}
