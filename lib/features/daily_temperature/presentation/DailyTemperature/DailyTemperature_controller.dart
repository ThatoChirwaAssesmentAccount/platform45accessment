import 'package:get/get.dart';

import '../../data/datasources/get_daily_temperature_data_source.dart';
import '../../data/models/daily_forecast_data.dart';

class DailyTemperatureController extends GetxController {
  var isloading = true.obs;
  var dailyForecast = <DailyForecastDataModel>[].obs;

  @override
  void onInit() {
    getForecast();
    super.onInit();
  }

  void getForecast() async {
    try {
      isloading(true);
      var forecastData = await DailyForecastDataSource.getForecastData();
      dailyForecast.assignAll(forecastData);
    } finally {
      isloading(false);
    }
  }
}
