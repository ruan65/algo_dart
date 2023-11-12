List<int> productExceptSelf(List<int> nums) {
  final res = List.generate(nums.length, (index) => 1);
  var pr = 1;
  for(var i = 0; i < nums.length; i++) {
    final n = nums[i];
    res[i] = pr;
    pr *= n;
  }
  pr = 1;
  for(var i = nums.length - 1; i > -1; i--) {
    final n = nums[i];
    res[i] = res[i] * pr;
    pr *= nums[i];
  }
  return res;
}

void main() {
  print(productExceptSelf([1, 2, 3, 4]));
  print(productExceptSelf([-1,1,0,-3,3]));
  print(productExceptSelf([-1,1]));
}
