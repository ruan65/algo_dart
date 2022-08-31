int solution(int n) {
  if(n < 0) {
    return 0;
  }
  int res = 0;
  for(int i = 1; i < n; i++) {
    if(i % 3 == 0 || i % 5 == 0) {
      res += i;
    }
  }
  return res;
}

void main() {
  print(solution(10));
}