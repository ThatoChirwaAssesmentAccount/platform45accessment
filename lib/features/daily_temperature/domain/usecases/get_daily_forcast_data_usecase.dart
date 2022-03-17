import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:platform45accessment/core/usecase/usecase.dart';
import '../../../../core/error/fail.dart';
import '../entities/daily_forecast_data.dart';
import '../repositories/get_daily_forcast_data_repo.dart';

class GetDailyForecastData implements UseCase<DailyForecastData, Params> {
  final DailyForecastDataRepository repository;
  GetDailyForecastData(this.repository);

  @override
  Future<Either<Failures, DailyForecastData>> call(Params params) async {
    return await repository.getForecastData();
  }
}

class Params extends Equatable {
  const Params();
  @override
  List<Object> get props => [];
}
