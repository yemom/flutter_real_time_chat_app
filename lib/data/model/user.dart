import 'package:myfirst_flutter_project/data/model/location.dart';

class User {
  final int id;
  final String? firstname;
  final String? lastname;
  final String? username;
  final String? mobile;
  final String? birthday;
  final String? gender;
  final String? visibleGender;
  final Location? location;

  User(
    this.id,
    this.firstname,
    this.lastname,
    this.username,
    this.mobile,
    this.birthday,
    this.gender,
    this.visibleGender,
    this.location,
  );

  factory User.fromJson(Map<String, dynamic> json) {
    final lat = json['lat'];
    final lng = json['lng'];
    final locationName = json['location'] ?? json['locationName'];
    Location? location;
    if (lat is num && lng is num) {
      location = Location(
        lat.toDouble(),
        lng.toDouble(),
        (locationName ?? '').toString(),
      );
    } else if (json['location'] is Map<String, dynamic>) {
      location = Location.fromJson(json['location'] as Map<String, dynamic>);
    }

    return User(
      json['id'] as int,
      (json['firstname'] ?? json['name']) as String?,
      (json['lastname'] ?? json['surname']) as String?,
      json['username'] as String?,
      json['mobile'] as String?,
      json['birthday'] as String?,
      json['gender'] as String?,
      json['visibleGender'] as String?,
      location,
    );
  }
}
