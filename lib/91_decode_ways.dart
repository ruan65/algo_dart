int numDecodings(String s) {
  if (s.startsWith('0')) return 0;
  int res = 0;

  for (String ch in s.split('')) {
    final i = int.parse(ch);
    if (i != 0) {
      res += 1;
    }
  }
  return res;
}
