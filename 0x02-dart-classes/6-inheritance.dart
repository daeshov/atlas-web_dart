class User {
  int id = 0;
  String name = "";
  int age = 0;
  double height = 0.0;
  String? user_password;
  Password password = Password();

  User({required this.id, required this.name, required this.age, required this.height, this.user_password}) {
    password = Password(password: user_password);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height, Password: ${password.toString()})';
  }

  bool isPasswordValid() {
    return password.isValid();
  }
}