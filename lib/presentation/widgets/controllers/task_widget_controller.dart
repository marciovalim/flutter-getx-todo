import 'package:todo_with_getx/models/task_model.dart';

class TaskWidgetController {
  final TaskModel model;

  TaskWidgetController(this.model);

  void setFinished(bool value) {
    model.finished.value = value;
  }
}
