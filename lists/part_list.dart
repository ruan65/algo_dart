List<List<String>> partlist(List<String> arr) {
  final List<List<String>> res = [];
  for (int i = 1; i < arr.length; i++) {
    final cur = <String>[];
    cur.add(arr.sublist(0, i).join(' '));
    cur.add(arr.sublist(i).join(' '));
    res.add(cur);
  }
  return res;
}

main() {
  final t1 = ["I", "wish", "I", "hadn't", "come"];
  print(partlist(t1));
}
