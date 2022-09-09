List<List<int>> threeSum(List<int> nums) {
  final vi = <int, List<int>>{};
  nums.asMap().entries.forEach(
      (e) => vi.update(e.value, (v) => [...v, e.key], ifAbsent: () => [e.key]));
  print(vi);
  final List<List<int>> sum2ind = [];
  final List<List<int>> res = [];
  for (var i = 0; i < nums.length; i++) {
    sum2ind.addAll(
        List.generate(nums.length - i - 1, (index) => [i, i + index + 1]));
  }

  print(sum2ind);

  for (List<int> pair in sum2ind) {
    final a = nums[pair.first] + nums[pair.last];
    if (vi.containsKey(-a)) {
      final ind = vi[-a] ?? [];
      for (int j in ind) {
        if (!pair.contains(j)) {
          res.add([j, pair.first, pair.last]);
        }
      }
    }
  }

  return res;
}

void main() {
  final nums = [-1, 0, 1, 2, -1, -4];
  print(threeSum(nums));
}
