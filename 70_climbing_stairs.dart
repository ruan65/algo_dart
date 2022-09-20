int climbStairs(int n) {
  int oneAhead = 1, twoAhead = 1, result = 1;
  for (int i = 0; i < n - 1; i++) {
    result = oneAhead + twoAhead;
    twoAhead = oneAhead;
    oneAhead = result;
  }
  return result;
}

void main() {
  print(climbStairs(5));
}
