List<int> twoSum(List<int> nums, int target) {
  final map = <int, int>{};
  for (int n = 0; n < nums.length; n++) {
    final diff = target - nums[n];
    if (map[diff] != null) {
      return [n, map[diff]!];
    }
    map[nums[n]] = n;
  }
  return [];
}

void main() {
  final arr = [2, 7, 11, 15];
  final tg = 9;
  print(twoSum(arr, tg));
}
