class User {
  final int id;
  final String? firstname;
  final String? lastname;
  final String? username;
  final String? mobile;
  final String? birthday;
  final String? gender;
  final String? visibleGender;

  User(
    this.id,
    this.firstname,
    this.lastname,
    this.username,
    this.mobile,
    this.birthday,
    this.gender,
    this.visibleGender,
  );

  factory User.fromJson(Map<String, dynamic> json) => User(
    json['id'] as int,
    (json['firstname'] ?? json['name']) as String?,
    (json['lastname'] ?? json['surname']) as String?,
    json['username'] as String?,
    json['mobile'] as String?,
    json['birthday'] as String?,
    json['gender'] as String?,
    json['visibleGender'] as String?,
  );
}
