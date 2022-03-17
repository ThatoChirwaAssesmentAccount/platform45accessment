import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Daily_forecast_class_model.dart';

class DailyForecastDataSource {
  static Future<List<DailyForecastDataModel>> getForecastData() async {
    final queryParameters = {'q': 'pretoria', 'cnt': '5', 'units': 'metrics'};
    final uri = Uri.https('https://community-open-weather-ma.p.rapidapi.com',
        '/forecast/daily', queryParameters);
    final getForecast = await http.get(uri, headers: {
      'x-rapidapi-host': 'community-open-weather-map.p.rapidapi.com',
      'x-rapidapi-key': 'd13d93e6d2msh95b506ddbe0b842p146d78jsn65af70486602'
    });
    if (getForecast.statusCode == 200) {
      final jsonString = getForecast.body;
      return dailyForecastDataModelFromJson(jsonString);
    }
    throw (Exception);
  }
}
