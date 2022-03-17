import 'dart:convert';

class City {
  City({
    required this.name,
    required this.timezone,
  });

  final String name;
  final int timezone;

  factory City.fromJson(Map<String, dynamic> json) => City(
        name: json["name"],
        timezone: json["timezone"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "timezone": timezone,
      };
}
