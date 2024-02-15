import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final Map<String, dynamic> userMap = json.decode(userData);
    final username = userMap['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final credentialsValid = await checkCredentials();
    print('There is a user: $credentialsValid');

    if (credentialsValid) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
