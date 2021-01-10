import 'package:get/state_manager.dart';
import 'package:todo_with_getx/models/task_model.dart';

class TaskListModel extends GetxController {
  final _tasks = List<TaskModel>.empty().obs;

  List<TaskModel> get all => _tasks;

  List<TaskModel> filterByText(String text) {
    if (text.isEmpty) return all;
    return all.where((e) => e.name.contains(text)).toList();
  }

  void add(TaskModel taskModel) {
    _tasks.add(taskModel);
  }
}
