import 'package:equatable/equatable.dart';

class City extends Equatable {
  final String name;
  final int timezone;
  const City({
    required this.name,
    required this.timezone,
  });

  @override
  List<Object> get props => [name, timezone];
}
