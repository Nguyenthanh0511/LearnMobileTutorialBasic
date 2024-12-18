Stream<int> countStream(int n) async* {
  for (int i = 0; i < n; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() async {
  int sum = 0;
  await for (int i in countStream(10)) {
    print(i);
    sum += i;
  }
  print("Sum = ${sum}");
}