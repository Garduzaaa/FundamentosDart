void main() {
  emitNumbers().listen((value) {
    print('Stream valie: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('desde periodic $value');
    return value;
  }).take(5);
}
