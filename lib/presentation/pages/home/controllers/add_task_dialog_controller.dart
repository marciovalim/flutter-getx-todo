import 'package:get/route_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:todo_with_getx/presentation/pages/home/controllers/home_controller.dart';

class AddTaskDialogController extends GetxController {
  final inputText = ''.obs;

  void setInputText(String value) => inputText.value = value;

  void cancelHandle() {
    Get.back();
  }

  void saveHandle() {
    final homeController = Get.find<HomeController>();
    if (inputText.isEmpty) return;
    homeController.addTask(inputText.value);
    Get.back();
  }
}
