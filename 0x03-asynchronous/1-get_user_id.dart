import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final Map<String, dynamic> userMap = json.decode(userData);
  return userMap['id'];
}
