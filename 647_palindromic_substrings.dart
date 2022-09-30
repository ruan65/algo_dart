int countSubstrings(String s) {
  int count = s.length;

  if (count < 2) return count;
  if (count == 2) {
    if (s[0] == s[1]) return 3;
    return count;
  }

  for (int i = 1; i < s.length; i++) {
    // odd
    int j = i - 1;
    int k = i + 1;
    while (j >= 0 && k < s.length) {
      if (s[j] != s[k]) {
        break;
      }
      count++;
      j -= 1;
      k += 1;
    }
    j = i - 1;
    k = i;
    // even
    while (j >= 0 && k < s.length) {
      if (s[j] != s[k]) {
        break;
      }
      count++;
      j -= 1;
      k += 1;
    }
  }
  return count;
}

void main() {
  print(countSubstrings('aaa'));
}
