import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './DailyTemperature_controller.dart';

class DailyTemperaturePage extends GetView<DailyTemperatureController> {
  DailyTemperaturePage({Key? key}) : super(key: key);
  final DailyTemperatureController dailyTemperatureController =
      Get.put(DailyTemperatureController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DailyTemperaturePage'),
      ),
      body: Obx(() {
        if (dailyTemperatureController.isloading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
              itemCount: dailyTemperatureController.dailyForecast.length,
              itemBuilder: (context, index) {
                final forecast =
                    dailyTemperatureController.dailyForecast[index];
                return ListTile(
                    title: Text(forecast.list[0].temp.day.toString()));
              });
        }
      }),
    );
  }
}
