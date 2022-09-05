import 'dart:async';

class A {}

class B {}

void main() {
  A a = A();
  B b = B();
  print(a == b);
  print(a.hashCode);
  print(a.runtimeType);
}

// void main() {
//   // prints every second arg to console
//   printEverySecond();
//   var result = fibonacci(10);
//   print(result);
// }

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

printEverySecond() async {
  while (true) {
    print('sec');
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() async {
  final timer = Timer.periodic(Duration(seconds: 1), (_) {
    print(1);
  });

  var result = fibonacci(20);
  print(result);

  await Future.delayed(Duration(milliseconds: 1001));

  timer.cancel();
}
