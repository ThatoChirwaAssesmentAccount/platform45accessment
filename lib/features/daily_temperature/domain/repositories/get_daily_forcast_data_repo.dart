import 'package:dartz/dartz.dart';
import '../../../../core/error/fail.dart';
import '../entities/daily_forecast_data.dart';

abstract class DailyForecastDataRepository {
  Future<Either<Failures, DailyForecastData>> getForecastData();
}
