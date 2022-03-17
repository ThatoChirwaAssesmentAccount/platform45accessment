import 'package:get/get.dart';
import './DailyTemperature_controller.dart';

class DailyTemperatureBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DailyTemperatureController());
    }
}