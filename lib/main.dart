import 'package:flutter/widgets.dart';
import 'package:todo_with_getx/di/di_utils.dart';

import 'package:todo_with_getx/presentation/todo_app.dart';

void main() async {
  await DiUtils.setup();
  runApp(TodoApp());
}
