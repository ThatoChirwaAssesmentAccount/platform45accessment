import 'package:equatable/equatable.dart';
import 'package:platform45accessment/features/daily_temperature/domain/entities/city_class.dart';
import 'package:platform45accessment/features/daily_temperature/domain/entities/ListElement_class.dart';

class DailyForecastData extends Equatable {
  final City city;
  final int cnt;
  final List<ListElement> list;

  const DailyForecastData({
    required this.city,
    required this.cnt,
    required this.list,
  });
  @override
  List<Object> get props => [city, cnt, list];
}
