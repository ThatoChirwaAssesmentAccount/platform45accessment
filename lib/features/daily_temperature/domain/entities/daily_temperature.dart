class Temperature {
  final double day;
  final double min;
  final double max;
  final double night;
  final double eve;
  final double morn;

  Temperature({
    required this.day,
    required this.min,
    required this.max,
    required this.night,
    required this.eve,
    required this.morn,
  });

  factory Temperature.fromJson(Map<String, dynamic> json) {
    final day = json['day'];
    final min = json['min'];
    final max = json['max'];
    final night = json['night'];
    final eve = json['eve'];
    final morn = json['morn'];
    return Temperature(
        day: day, min: min, max: max, night: night, eve: eve, morn: morn);
  }
}
