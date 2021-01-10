import 'package:get/state_manager.dart';

class TaskModel extends GetxController {
  final String name;

  TaskModel(this.name);

  final finished = false.obs;
}
