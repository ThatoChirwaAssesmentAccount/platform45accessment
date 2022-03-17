import 'dart:convert';
import 'City_subclass_model.dart';

List<DailyForecastDataModel> dailyForecastDataModelFromJson(String str) =>
    List<DailyForecastDataModel>.from(
        json.decode(str).map((x) => DailyForecastDataModel.fromJson(x)));

String userToJson(List<DailyForecastDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
