import 'package:flutter/material.dart';

import 'controllers/add_task_dialog_controller.dart';

class AddTaskDialog extends StatelessWidget {
  AddTaskDialog({Key key}) : super(key: key);

  final _controller = AddTaskDialogController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Task'),
      content: TextField(
        onChanged: _controller.setInputText,
      ),
      actions: [
        FlatButton(
          onPressed: _controller.cancelHandle,
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: _controller.saveHandle,
          child: Text('Add'),
        ),
      ],
    );
  }
}
