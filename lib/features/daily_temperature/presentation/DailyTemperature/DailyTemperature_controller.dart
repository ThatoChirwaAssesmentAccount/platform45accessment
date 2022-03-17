import 'package:get/get.dart';

import '../../data/datasources/Get_daily_forecast_data_source.dart';
import '../../data/models/Daily_forecast_class_model.dart';

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
