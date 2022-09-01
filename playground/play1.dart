class A {}

class B {}

void main() {
  A a = A();
  B b = B();
  A? aNull = null;
  B? bNull = null;

  print(
      '${a.hashCode}\n${b.runtimeType}\n${a.toString()}\n${a == b}\n${Object.hash(a, b)}');

  print(aNull.hashCode);
  print(bNull.hashCode);
  print(null is Null);
}
