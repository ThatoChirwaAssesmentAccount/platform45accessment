// // To parse this JSON data, do
// //
// //     final dailyForecastDataModel = dailyForecastDataModelFromJson(jsonString);

import 'dart:convert';

List<DailyForecastDataModel> dailyForecastDataModelFromJson(String str) =>
    List<DailyForecastDataModel>.from(
        json.decode(str).map((x) => DailyForecastDataModel.fromJson(x)));

String userToJson(List<DailyForecastDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class DailyForecastDataModel {
//   DailyForecastDataModel({
//     required this.city,
//     required this.cnt,
//     required this.list,
//   });

//   City city;
//   int cnt;
//   List<ListElement> list;

//   factory DailyForecastDataModel.fromJson(Map<String, dynamic> json) =>
//       DailyForecastDataModel(
//         city: City.fromJson(json["city"]),
//         cnt: json["cnt"],
//         list: List<ListElement>.from(
//             json["list"].map((x) => ListElement.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "city": city.toJson(),
//         "cnt": cnt,
//         "list": List<dynamic>.from(list.map((x) => x.toJson())),
//       };
// }

// class City {
//   City({
//     required this.name,
//     required this.timezone,
//   });

//   String name;
//   int timezone;

//   factory City.fromJson(Map<String, dynamic> json) => City(
//         name: json["name"],
//         timezone: json["timezone"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "timezone": timezone,
//       };
// }

// class ListElement {
//   ListElement({
//     required this.temp,
//     required this.rain,
//   });

//   Temp temp;
//   double rain;

//   factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
//         temp: Temp.fromJson(json["temp"]),
//         rain: json["rain"].toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "temp": temp.toJson(),
//         "rain": rain,
//       };
// }

// class Temp {
//   Temp({
//     required this.day,
//     required this.min,
//     required this.max,
//     required this.night,
//     required this.eve,
//     required this.morn,
//   });

//   double day;
//   double min;
//   double max;
//   double night;
//   double eve;
//   double morn;

//   factory Temp.fromJson(Map<String, dynamic> json) => Temp(
//         day: json["day"].toDouble(),
//         min: json["min"].toDouble(),
//         max: json["max"].toDouble(),
//         night: json["night"].toDouble(),
//         eve: json["eve"].toDouble(),
//         morn: json["morn"].toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "day": day,
//         "min": min,
//         "max": max,
//         "night": night,
//         "eve": eve,
//         "morn": morn,
//       };
// }

// To parse this JSON data, do
//
//     final dailyForecastDataModel = dailyForecastDataModelFromJson(jsonString);

// import 'dart:convert';

// <List<DailyForecastDataModel> dailyForecastDataModelFromJson(String str) =><List<DailyForecastDataModel>.fromJson(json.decode(str));

// String dailyForecastDataModelToJson(DailyForecastDataModel data) => json.encode(data.toJson());

class DailyForecastDataModel {
  DailyForecastDataModel({
    required this.city,
    required this.list,
  });

  final City city;
  final List<ListElement> list;

  factory DailyForecastDataModel.fromJson(Map<String, dynamic> json) =>
      DailyForecastDataModel(
        city: City.fromJson(json["city"]),
        list: List<ListElement>.from(
            json["list"].map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "city": city.toJson(),
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
      };
}

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

class ListElement {
  ListElement({
    required this.temp,
    required this.rain,
  });

  final Temp temp;
  final double rain;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        temp: Temp.fromJson(json["temp"]),
        rain: json["rain"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "temp": temp.toJson(),
        "rain": rain,
      };
}

class Temp {
  Temp({
    required this.day,
    required this.min,
    required this.max,
    required this.night,
    required this.eve,
    required this.morn,
  });

  final double day;
  final double min;
  final double max;
  final double night;
  final double eve;
  final double morn;

  factory Temp.fromJson(Map<String, dynamic> json) => Temp(
        day: json["day"].toDouble(),
        min: json["min"].toDouble(),
        max: json["max"].toDouble(),
        night: json["night"].toDouble(),
        eve: json["eve"].toDouble(),
        morn: json["morn"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "min": min,
        "max": max,
        "night": night,
        "eve": eve,
        "morn": morn,
      };
}
