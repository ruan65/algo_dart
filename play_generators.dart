genSync(int n) sync* {
  int i = 0;
  while (i < n) {
    yield i++ + 1;
  }
}

genAsync(int n) async* {
  int i = 0;
  while (i < n) {
    yield i++ + 1;
  }
}

void main() {
  genAsync(5).forEach((e) => print('async: $e'));
  genSync(5).forEach((e) => print('sync: $e'));
}
