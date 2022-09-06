import 'dart:async';

class A {
  final String name;

  A(this.name);

  @override
  int get hashCode => Object.hashAll([name]);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}

void main() {
  final listOfStrings = List<String>.generate(10, (i) => 'a' * i);
  print(listOfStrings);
  print(('a' * 0).runtimeType);
  // A a = A();
  // B b = B();
  // print(a == b);
  // print(a.hashCode);
  // print(a.runtimeType);
  A a1 = A('123');
  A a2 = A('123');
  print(a1 == a2);
  print(a1.hashCode);
  print(a2.hashCode);
  print(a1.runtimeType);
}

class A1 {
  @override
  bool operator ==(Object other) {
    return other.runtimeType == A;
  }
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

void main_() async {
  final timer = Timer.periodic(Duration(seconds: 1), (_) {
    print(1);
  });

  var result = fibonacci(20);
  print(result);

  await Future.delayed(Duration(milliseconds: 1001));

  timer.cancel();
}
// void main() async {
//   final timer = Timer.periodic(Duration(seconds: 1), (_) {
//     print(1);
//   });
//
//   var result = fibonacci(20);
//   print(result);
//
//   await Future.delayed(Duration(milliseconds: 1001));
//
//   timer.cancel();
// }
