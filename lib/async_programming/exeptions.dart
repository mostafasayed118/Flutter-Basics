void main() {
  try {
    print(int.parse('1s'));
  } on FormatException {
    print('format exception');
  } catch (e) {
    print(e);
  }
}
