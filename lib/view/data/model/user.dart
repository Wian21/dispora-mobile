class DataUser {
  final List<User> data;
  DataUser({required this.data});
  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
        data: List.from(json['data'].map((user) => User.fromModel(user))),
      );
}

class User {
  final int id;
  final String firstname;
  final String lastname;
  final String email;
  final String avatar;

  User({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.avatar,
  });

  factory User.fromModel(Map<String, dynamic> json) => User(
        id: json['id'],
        firstname: json['first_name'],
        lastname: json['last_name'],
        email: json['email'],
        avatar: json['avatar'],
      );
}
