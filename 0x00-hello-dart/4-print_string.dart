void main() {
  String str = "Holberton School";
  // Print 3 times the value of str
  // followed by a new line
  // and the 9 first characters of str
  // followed by a new line
  print('${str * 3}\n${str.substring(0, 9)}\n');
}