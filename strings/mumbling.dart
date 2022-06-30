// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"

String accum(String str) {
  var res = [];
  for (int i = 0; i < str.length; i++) {
    res.add(str[i].toUpperCase() + str[i].toLowerCase() * i);
  }
  return res.join('-');
}

String accum2(String str) => str
    .split('')
    .asMap()
    .map((i, v) => MapEntry(i, v.toUpperCase() + v.toLowerCase() * i))
    .values
    .join('-');

void main() {
  print(accum2('abcd'));
}
