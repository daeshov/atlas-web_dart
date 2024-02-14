void outer(String name, String id) {
  print(inner(name, id));
}

String inner(String name, String id) {
  List<String> nameParts = name.split(' ');
  String firstName = nameParts[0][0].toUpperCase() + nameParts[0].substring(1);
  String lastName = nameParts[1][0].toUpperCase() + nameParts[1].substring(1);

  return 'Hello Agent ${lastName[0]}.${firstName} your id is $id';
}