class Location {

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        json['lat'] as double,
        json['lng'] as double,
        json['name'] as String,
      );
  Location(this.lat, this.lng, this.name);

  final double lat;
  final double lng;
  final String name;

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
        'name': name,
      };
}
