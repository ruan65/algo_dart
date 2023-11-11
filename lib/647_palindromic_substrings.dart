int countSubstrings(String s) {
  int count = s.length;
  for (int i = 1; i < s.length; i++) {
    // odd
    int j = i - 1;
    int k = i + 1;
    while (j >= 0 && k < s.length) {
      if (s[j] != s[k]) break;
      count++;
      j -= 1;
      k += 1;
    }
    j = i - 1;
    k = i;

    while (j >= 0 && k < s.length) {
      if (s[j] != s[k]) break;
      count++;
      j -= 1;
      k += 1;
    }
  }
  return count;
}

void main() {
  print(countSubstrings('a'));
}
