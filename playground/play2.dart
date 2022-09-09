void main() {
  print('777'.parseInt());
}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}
