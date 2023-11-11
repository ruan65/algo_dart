import 'dart:math';

int minCostClimbingStairs(List<int> cost) {
  cost.add(0);
  for (int i = cost.length - 3; i >= 0; i--) {
    cost[i] += min(cost[i + 1], cost[i + 2]);
  }
  return min(cost[0], cost[1]);
}

void main() {
  final cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1];
  print(minCostClimbingStairs(cost));
}
