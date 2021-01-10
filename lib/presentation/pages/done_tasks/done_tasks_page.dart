import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:todo_with_getx/presentation/pages/done_tasks/controllers/done_tasks_controller.dart';
import 'package:todo_with_getx/presentation/widgets/controllers/search_field_controller.dart';
import 'package:todo_with_getx/presentation/widgets/search_field.dart';
import 'package:todo_with_getx/presentation/widgets/task_widget.dart';

class DoneTasksPage extends StatelessWidget {
  DoneTasksPage({Key key}) : super(key: key);

  final _controller = Get.find<DoneTasksController>();
  final _searchFieldController = SearchFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchField(controller: _searchFieldController),
      ),
      body: Obx(() {
        final doneTasks =
            _controller.filterByText(_searchFieldController.searchText);
        return ListView.builder(
          itemCount: doneTasks.length,
          itemBuilder: (context, index) => TaskWidget(doneTasks[index]),
        );
      }),
    );
  }
}
