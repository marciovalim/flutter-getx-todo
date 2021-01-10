import 'package:get/instance_manager.dart';
import 'package:todo_with_getx/models/task_list_model.dart';

import 'package:todo_with_getx/presentation/pages/done_tasks/controllers/done_tasks_controller.dart';
import 'package:todo_with_getx/presentation/pages/home/controllers/home_controller.dart';

class DiUtils {
  const DiUtils._();

  static Future<void> setup() async {
    Get.put(TaskListModel());
    Get.lazyPut(() => HomeController(Get.find<TaskListModel>()));
    Get.lazyPut(() => DoneTasksController(Get.find<TaskListModel>()));
  }
}
