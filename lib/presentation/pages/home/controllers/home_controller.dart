import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:todo_with_getx/models/task_list_model.dart';
import 'package:todo_with_getx/models/task_model.dart';
import 'package:todo_with_getx/presentation/pages/home/add_task_dialog.dart';

class HomeController extends GetxController {
  final TaskListModel taskList;
  HomeController(this.taskList);

  List<TaskModel> get allTasks => taskList.all;
  List<TaskModel> filterTasks(String text) => taskList.filterByText(text);

  void openAddTaskDialog() {
    Get.dialog(AddTaskDialog());
  }

  void addTask(String taskName) {
    taskList.add(TaskModel(taskName));
  }
}
