void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Please provide a number as a command-line argument.");
    return;
  }

  String input = arguments[0];
  int number = int.tryParse(input) ?? 0;

  if (number > 0) {
    print('$number is positive');
  } else if (number == 0) {
    print('$number is zero');
  } else {
    print('$number is negative');
  }
}
