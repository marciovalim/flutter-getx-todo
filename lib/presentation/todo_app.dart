import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:todo_with_getx/presentation/pages/home/home_page.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      home: HomePage(),
    );
  }
}
