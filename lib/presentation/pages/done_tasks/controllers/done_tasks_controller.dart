import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todo_with_getx/models/task_list_model.dart';
import 'package:todo_with_getx/models/task_model.dart';

class DoneTasksController extends GetxController {
  final TaskListModel taskList;

  DoneTasksController(this.taskList);

  List<TaskModel> filterByText(String text) {
    return taskList.filterByText(text).where((e) => e.finished.value).toList();
  }
}
