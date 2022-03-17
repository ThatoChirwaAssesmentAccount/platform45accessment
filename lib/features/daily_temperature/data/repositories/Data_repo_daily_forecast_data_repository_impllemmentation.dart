import 'package:platform45accessment/features/daily_temperature/domain/entities/daily_forecast_data.dart';

import 'package:platform45accessment/core/error/fail.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/get_daily_forcast_data_repo.dart';
import '../datasources/Get_daily_forecast_data_source.dart';

class DailyForecastDataRepositoryImplementation
    implements DailyForecastDataRepository {
  final DailyForecastDataSource dataSource;

  DailyForecastDataRepositoryImplementation({required this.dataSource});

  @override
  Future<Either<Failures, DailyForecastData>> getForecastData() async {
    throw UnimplementedError();
  }
}
