bool isPalindrome(String s) {
  s = s.replaceAll(RegExp("[^A-Za-z0-9]"), '').toLowerCase();
  int i = 0, j = s.length - 1;
  while (i < j) {
    if (s[i] != s[j]) return false;
    i++;
    j--;
  }
  return true;
}

String longestPalindrome(String s) {
  final arr = s.split('');
  if (s.length < 2) return s;
  if (s.length == 2 && arr.first == arr.last) return s;
  int longest = 1;
  int longestS = 0, longestE = 0;
  for (int i = 1; i < s.length; i++) {
    // odd palindrome
    int j = i - 1, k = i + 1;
    while (j >= 0 && k < s.length) {
      if (arr[j] != arr[k]) break;
      if (k - j + 1 > longest) {
        longest = k - j + 1;
        longestS = j;
        longestE = k;
      }
      j--;
      k++;
    }
    // even palindrome
    j = i - 1;
    k = i;
    while (j >= 0 && k < s.length) {
      if (arr[j] != arr[k]) break;
      if (k - j + 1 > longest) {
        longest = k - j + 1;
        longestS = j;
        longestE = k;
      }
      j--;
      k++;
    }
  }
  return arr.sublist(longestS, longestE + 1).join('');
}

void main() {
  print(longestPalindrome("abbbx"));
}
