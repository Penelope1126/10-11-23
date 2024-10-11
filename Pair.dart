class Pair<T, U> {
  T first;
  U second;

  Pair(this.first, this.second);

  void swap() {
    var temp = first;
    first = second as T;
    second = temp as U;
  }

  void displayPair() => print('Frist: $first, Second: $second');
}

void main(List<String> args) {
  var pair1 = Pair<int, int>(45, 50);
  pair1.displayPair();
  pair1.swap();
  pair1.displayPair();

  var pair2 = Pair<double, double>(3.14, 42.0);
  pair2.displayPair();
  pair2.swap();
  pair2.displayPair();
}
