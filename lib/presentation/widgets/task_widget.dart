import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:todo_with_getx/models/task_model.dart';
import 'package:todo_with_getx/presentation/widgets/controllers/task_widget_controller.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel task;
  final TaskWidgetController _controller;

  TaskWidget(this.task, {Key key})
      : _controller = TaskWidgetController(task),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(task.name),
      trailing: Obx(() {
        return Checkbox(
          value: task.finished.value,
          onChanged: _controller.setFinished,
        );
      }),
    );
  }
}
