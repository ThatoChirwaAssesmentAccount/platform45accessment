import 'package:equatable/equatable.dart';
import 'package:platform45accessment/features/daily_temperature/domain/entities/temp_class.dart';

class ListElement extends Equatable {
  final Temp temp;
  final int deg;
  final int pop;

  const ListElement({
    required this.temp,
    required this.deg,
    required this.pop,
  });
  @override
  List<Object> get props => [deg, pop, temp];
}
