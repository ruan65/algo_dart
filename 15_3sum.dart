List<List<int>> threeSum(List<int> nums) {

  if (nums.length < 3) return [];
  final Set<IntTriple> res = {};
  nums.sort();
  for (var i = 0; i < nums.length - 2; i++) {
    final v1 = nums[i];
    if (i > 0 && v1 == nums[i - 1]) continue;
    final checkSet = <int>{};
    for (var v2 in nums.sublist(i + 1)) {
      if (!checkSet.contains(v2)) {
        checkSet.add(-v1 - v2);
      } else {
        res.add(IntTriple(v1, v2, -v1 - v2));
      }
    }
  }
  return res.map((e) => e.toList()).toList();
}

class IntTriple {
  final int first, second, third;
  late final List<int> sorted;

  IntTriple(this.first, this.second, this.third) {
    sorted = [first, second, third];
    sorted.sort();
  }

  @override
  bool operator ==(Object other) {
    if (other is! IntTriple) return false;
    final otherSorted = other.sorted;

    otherSorted.sort();

    return sorted.first == otherSorted.first &&
        sorted.last == otherSorted.last &&
        sorted[1] == otherSorted[1];
  }

  @override
  int get hashCode => Object.hashAll(sorted);

  List<int> toList() => [first, second, third];

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

  print(IntTriple(1, 2, 3) == IntTriple(3, 2, 1));
  print({1, 2, 3} == {3, 2, 1});

}
