String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) {
    return '';
  }

  if (strs.length == 1) {
    return strs.first;
  }

  String pr = '';
  int i = 0;
  final w = strs[0];

  while (true) {
    if (i == w.length) return w;
    pr = w[i];
    for (String word in strs.sublist(1)) {
      if (word.length <= i || !(word[i] == pr)) {
        if (i == 0) {
          return '';
        }
        return w.substring(0, i);
      }
    }
    i++;
  }
}

void main() {
  // final strs = ["dog","racecar","car"];
  // final strs = ["flower", "flow", "flight"];
  final strs = ['ab', 'a'];
  print(longestCommonPrefix(strs));

  Function fn = () {
    return 3;
  };
}
