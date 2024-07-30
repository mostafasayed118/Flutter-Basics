void main() async {
  var future = Future(sum)
      .then((value) => print(value))
      .catchError((error) => print(error));

  var res = Future.delayed(const Duration(seconds: 1), printHello);
  print('1');
}

void printHello() {
  print('hello');
}

int sum() {
  return int.parse('111');
}
