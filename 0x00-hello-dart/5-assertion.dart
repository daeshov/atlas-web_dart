void main(List<String> arguments) {
  int score = int.parse(arguments[0]);

  assert(() {
    if (score >= 80) {
      print('You Passed');
      return true;
    } else {
      throw AssertionError("The score must be bigger or equal to 80");
    }
  }());
}
